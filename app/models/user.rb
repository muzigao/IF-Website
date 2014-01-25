class User < ActiveRecord::Base
	#def self.from_omniauth(auth)
  #  where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  #end

def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    if auth.credentials.expires_at
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    end
    user.save!
  end
end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end
end

class User < ActiveRecord::Base

attr_accessible :name, :uid, :email
validates :uid, :presence => true, :uniqueness => true
validates :email, :presence => true
#validates :provider => "facebook"


def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
	user.uid= auth["uid"]
	user.name = auth["extra"]["user_hash"]["name"]
	user.email = auth["extra"]["user_hash"]["email"]
  end  
end


end

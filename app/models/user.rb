class User < ApplicationRecord
  validates :elementary_name, length: { maximum: 20 }
  validates :junior_name, length: { maximum: 20 }
  validates :high_name, length: { maximum: 20 }
  validates :school_name, length: { maximum: 20 }
  validates :circle_name, length: { maximum: 20 }
  
  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    user_name = auth[:info][:user_name]
    image_url = auth[:info][:image]

    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.user_name = user_name
      user.image_url = image_url
    end
  end
end

class User < ApplicationRecord
    has_many :articles
        has_secure_password
        has_one_attached :profileImage
      
        validates :email, presence: true
        validates :password, presence: true
      
end

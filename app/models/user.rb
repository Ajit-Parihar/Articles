class User < ApplicationRecord
    has_many :articles
        has_secure_password
      
        validates :email, presence: true
        validates :password, presence: true
      
end

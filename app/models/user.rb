class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
    validates :username, uniqueness: true, length: { in: 4..10 }
    validates :password, length: { in: 6..16 }
end

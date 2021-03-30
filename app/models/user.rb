class User < ApplicationRecord
    has_many :carts
    has_many :items, through: :carts
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :email_address, presence: true, uniqueness: true
end

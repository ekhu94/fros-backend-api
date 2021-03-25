class User < ApplicationRecord
    has_one :cart
    has_many :items, through: :cart
    has_secure_password
end

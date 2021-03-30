class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email_address, :carts
  has_many :carts
end

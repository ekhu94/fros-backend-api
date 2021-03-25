class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email_address
  has_one :cart
end

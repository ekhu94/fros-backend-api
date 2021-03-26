class ItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :cart
  has_one :inventory
end

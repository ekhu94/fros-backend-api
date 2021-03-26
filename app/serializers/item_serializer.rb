class ItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  belongs_to :cart
  belongs_to :inventory
end

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :inventory
  belongs_to :cart
  belongs_to :inventory
end

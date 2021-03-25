class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :cart_id
  belongs_to :cart
end

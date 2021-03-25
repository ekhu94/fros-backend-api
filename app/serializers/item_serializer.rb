class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :cart_id
end

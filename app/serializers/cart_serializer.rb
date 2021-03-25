class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :total
  belongs_to :user
  has_many :items
end

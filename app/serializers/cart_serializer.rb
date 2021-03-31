class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :total, :items, :created_at
  belongs_to :user
  has_many :items
end

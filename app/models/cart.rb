class Cart < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :inventories, through: :items
end

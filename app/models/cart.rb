class Cart < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :inventories, through: :items
end

class Item < ApplicationRecord
  belongs_to genre

  has_many :cart_items
  has_many :orders
  has_many :order_details

  attachment :image

  validates :genre_id, :name, :price, presence: true
  validates :explanation, length: {maximum: 200}
  validates :price, numericality: { only_integer: true }
end

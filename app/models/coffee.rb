class Coffee < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end

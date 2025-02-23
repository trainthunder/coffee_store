class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :coffees, through: :order_items

  validates :user_id, presence: true
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

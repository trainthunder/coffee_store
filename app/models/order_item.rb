class OrderItem < ApplicationRecord
  belongs_to :coffee
  belongs_to :order

  validates :coffee_id, presence: true
  validates :order_id, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end

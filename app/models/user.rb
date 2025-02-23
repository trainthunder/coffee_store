class User < ApplicationRecord
  has_many :orders

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
  validates :phone, presence: true, uniqueness: true, format: { with: /\A\d{10}\z/, message: "ต้องเป็นตัวเลข 10 หลัก" }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "ต้องเป็นอีเมลที่ถูกต้อง" }
  validates :password, presence: true, length: { minimum: 6 }
end

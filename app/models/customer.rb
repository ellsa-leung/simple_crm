class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true, uniqueness: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z]+ [a-zA-Z]+\z/, message: "must be in the format 'First Name Last Name' (E.g. John Smith)" }
  validates :phone_number, presence: true, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "must be in the format 204-123-4567" }
  validates :email_address, allow_blank: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "invalid email address" }
  validates :notes, allow_blank: true, length: { maximum: 200 }
end

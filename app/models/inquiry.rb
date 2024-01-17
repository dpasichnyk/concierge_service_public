class Inquiry < ApplicationRecord
  has_many :listings

  validates :name, length: { minimum: 5, maximum: 255 }, allow_blank: false
  validates :phone_number, length: { minimum: 10, maximum: 15 }, allow_blank: false, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :description, length: { minimum: 20, maximum: 1000 }, allow_blank: false
end

class User < ActiveRecord::Base
  include ActiveModel::Validations
  validates :first_name, :last_name, :address,  :city, :state, :zip_code, presence: :true #:credit_card_type,
  # validates :credit_card, numericality: { only_integer: true}, length: { minimum: 16, maximum: 16 }
  validates :email, uniqueness: true, presence: :true, confirmation: true, email: true
  validates :email_confirmation, presence: true
  validates_with  AgeValidator

  has_many :products

end

class User < ActiveRecord::Base
  include ActiveModel::Validations
  validates :name, :address, presence: :true
  validates :credit_card, numericality: { only_integer: true}, length: { minimum: 16, maximum: 16 }
  validates :email, uniqueness: true, presence: :true, confirmation: true, email: true
  validates :email_confirmation, presence: true
  validates_with  AgeValidator

  # def dob_check
  #   if :dob.to_date < 21.years.ago
  #     errors.add :dob, 'must be older than 21'
  #   end
  # end
end

class User < ActiveRecord::Base
  validates :name, :address, presence: :true
  validates :credit_card, numericality: { only_integer: true}, length: { minimum: 16, maximum: 16 }
  validates :email, presence: :true, 
end

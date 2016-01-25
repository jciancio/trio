class Product < ActiveRecord::Base
	validates :description, :name, presence: :true
	validates :price_in_cents, numericality: { only_integer: true, greater_than: 0 }
	has_many :reviews
<<<<<<< HEAD
	has_one :picture
=======
  belongs_to :user
  
>>>>>>> 60137d1631d9e096f44edfc85d5b0769d16fbc35
	
	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		format( "$%.2f", price_in_dollars )
	end
end
 
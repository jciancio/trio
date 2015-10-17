class Review < ActiveRecord::Base
  validates :product, :product_id, presence: :true
  validates :comment, presence: :true

  belongs_to :product
end

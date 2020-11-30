class OrderItem < ApplicationRecord
	belongs_to :sweet
	belongs_to :order
end

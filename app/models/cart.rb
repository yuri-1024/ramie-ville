class Cart < ApplicationRecord
	belongs_to :end_user
	belongs_to :item

	has_many :carts, dependent: :destroy
    has_many :orders, dependent: :destroy
end

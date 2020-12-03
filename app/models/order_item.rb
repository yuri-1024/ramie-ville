class OrderItem < ApplicationRecord
	belongs_to :item
	belongs_to :order

	enum creat_status: { 着手不可: 0, 製作中: 1}
end

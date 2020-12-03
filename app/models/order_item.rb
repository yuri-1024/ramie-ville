class OrderItem < ApplicationRecord
	belongs_to :item
	belongs_to :order

	enum creat_status: { 着手不可: 0, 未着手: 1, 製作中: 2, 製作完了: 3}
end

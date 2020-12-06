class Item < ApplicationRecord
	belongs_to :creater
	has_many :carts
	has_many :order_items
	attachment :image

	acts_as_taggable

	enum status: {販売中: 0, 売り切れ: 1, 予約商品: 2}
end

class Item < ApplicationRecord
	belongs_to :creater
	has_many :carts
	has_many :order_items
	has_many :favorites, dependent: :destroy
	attachment :image

	acts_as_taggable

	def favorited_by?(end_user)
    	favorites.where(end_user_id: end_user.id).exists?
    end

	enum status: {販売中: 0, 売り切れ: 1, 予約商品: 2}
end

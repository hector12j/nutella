class Product < ApplicationRecord
	validates :name, presence: true
	validates :price, presence: true
	validates :stock, presence: true
	validates :product_category_id, presence: true
end

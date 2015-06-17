class CategoriesPost < ActiveRecord::Base
	belong_to :category
	belong_to :post
end

class Category < ActiveRecord::Base
	has_many :categories_posts
	has_many :post, through :categories_posts
end

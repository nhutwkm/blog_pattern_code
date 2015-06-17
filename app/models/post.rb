class Post < ActiveRecord::Base
	has_many :commands
	has_many :categories_posts
	has_many :categories, through :categories_posts
	belongs_to :user 

end

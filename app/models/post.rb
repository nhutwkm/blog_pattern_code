class Post < ActiveRecord::Base
	has_many :commands
	has_many :categories_posts
	has_many :categories, through: :categories_posts
	belongs_to :user 

	def self.list_posts_of_user(user)
		Post.where(user_id: user.id)
	end

end

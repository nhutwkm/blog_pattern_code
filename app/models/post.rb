class Post < ActiveRecord::Base
	has_many :commands
	has_many :categories_posts
	has_many :categories, through: :categories_posts
	belongs_to :user 

	def self.list_posts_of_user(user)
	  Post.where(user_id: user.id)
	end
	def self.do_list
      Post.all
  	end
	def self.do_new(post_params)
	  Post.new(post_params)
	end
	def self.delete(id)
	  Post.find(id).destroy
	end	
	def self.post_list(page)
      Post.paginate(:page =>page, :per_page => 3).order('title asc')	 
	end
	def self.Category_post_find(id)

		 Post.joins(:categories_posts).where("categories_posts.category_id=#{id}")
		 # User.where(id: 1).joins(:articles).explain
		 # binding.pry
	end
end
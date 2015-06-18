class Post < ActiveRecord::Base
	has_many :commands
	has_many :categories_posts
	has_many :categories, through: :categories_posts
	belongs_to :user 

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
end
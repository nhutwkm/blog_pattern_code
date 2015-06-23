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
     Post.paginate(:page =>page, :per_page => 5).order('title asc')	 
	end
	def self.Category_post_find(id)
		 Post.joins(:categories_posts).where("categories_posts.category_id=#{id}")
	end

	def check_right?
   self.is_user or self.is_admin
 	end
  def is_user
    @is_user = User.current.id == user_id
  end
  def is_admin
    @is_admin = User.current.role_id==1
  end

end
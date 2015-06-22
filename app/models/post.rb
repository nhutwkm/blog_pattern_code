class Post < ActiveRecord::Base
	has_many :commands
	has_many :categories_posts
	has_many :categories, through: :categories_posts
	belongs_to :user 


  def initalize
      
  end

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
		 # User.where(id: 1).joins(:articles).explain
		 # binding.pry
	end
	# def self.check_user_admin(current_user,@post)
 #    self.is_user(current_user,@post)&&self.is_admin(current_user)
 #  end
  def is_admin 
    @is_admin = User.current.role_id==1
  end
  def is_current_user
    
    # binding.pry
    @is_current_user = User.current.id == user_id

  end
  def check_right?
    self.is_admin  or self.is_current_user
  end


  # def self.is_admin(current_user)
  #   @is_admin = current_user.role_id==1
  # end
  
end
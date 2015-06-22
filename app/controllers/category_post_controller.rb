class CategoryPostController < ApplicationController
	
	def index
		@categories= Category.all
		# @id=5
		# return render "category_post/index" unless params[:categories].present?
		if params[:categories].nil?
		@category_pos= Post.Category_post_find(5)
		else
		@category_pos= Post.Category_post_find(params[:categories])
		# binding.pry
		# @id=params[:categories]
		end
		# @id =Category.find_by_id(params[:categories])
		@category_pos=@category_pos.paginate(:page => params[:page], :per_page  => 1)
	end
	def category_post
		@category_pos= Post.Category_post_find(params[:category_post_id])
		@category_pos=@category_pos.paginate(:page => params[:page], :per_page  => 1)
	end
	# def create
	# @categories= Category.all
	#  # @category_pos= CategoryPost.Category_post_find(params[:categories])
	# render "category_post/index"	
	
	# # binding.pry
	# end
end

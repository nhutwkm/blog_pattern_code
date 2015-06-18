class CategorysController < ApplicationController
  def index
  
  	@categorys = Category.category_list(params[:page])

  	# @categorys = Post.all
  	# binding.pry
  end
  def chitiet 	
  	 @category=Category.chitiet(params[:id])
  end

	def delete
		Category.delete(params[:id])
		redirect_to action: :index
	end	
	def edit
    @category=Category.chitiet(params[:id])
	end
	def update
		Category.update(params[:id], params[:name])
		redirect_to action: :index
	end
	def new
  	# @category=Category.new
	 	Category.create(params[:name])
	
		redirect_to action: :index
		
	end
end
class CategoriesController < ApplicationController
  def index
  	@categories = Category.category_list(params[:page])
  end
  def Detail 	
  	 @category=Category.chitiet(params[:category_id])
  	 # binding.pry
  end
	def delete
		Category.delete(params[:category_id])
		redirect_to action: :index
	end	
	def edit
    @category=Category.chitiet(params[:id])
	end
	def update
		Category.update(params[:category_id], params[:name])
		redirect_to action: :index
	end
	def new
        return render "categories/_form_new_category" unless params[:name].present?
		Category.create(params[:name])
		redirect_to action: :index
	end

end

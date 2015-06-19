class PostsController < ApplicationController
		def index
    	  @posts = Post.do_list
      	  @posts = Post.post_list(params[:page])
      	  @users = User.all
  		end
		
		def new
		  @users = User.all
		  @post = Post.new
		  @all_category = Category.all
		  @category_post = @post.categories_posts.build

		end

		def create
		  @post = Post.do_new(post_params)
		  if @post.save
		  	params[:object][:id].each do |fa|
		  		unless fa.blank? or fa.nil?
		  		CategoriesPost.create(category_id: fa, post_id: @post.id)
		  	end
		  end
		    redirect_to @post
			else
			render 'new'
			end 
		end

		def update
		  @post = Post.find(params[:id])
		  if @post.update(post_params)
		    redirect_to posts_path
			else 
			  render 'edit'
			end
		end

		def edit 
		  @users = User.all
		  @post = Post.find(params[:id])
		  @all_category = Category.all
		end
		
		def show	
    	  @post = Post.find(params[:id])
    	  @list_categories = list_categories(params[:id])
  	end

  	def destroy
	    @post = Post.delete(params[:id])
		  @post.destroy
    	redirect_to posts_path
  	end

  	private
  		def post_params
    	  params.require(:post).permit(:title, :desc, :code, :user_id)
  		end

  		def list_categories(id)
  			CategoriesPost.where(post_id: id)
  		end
end
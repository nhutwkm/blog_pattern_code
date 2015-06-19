class PostsController < ApplicationController
		def index
    	  @posts = Post.do_list
      	  @posts = Post.post_list(params[:page])
  		end
		
		def new
		  @users = User.all
		  @post = Post.new
		end

		def create
		  @post = Post.do_new(post_params)
		  if @post.save
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
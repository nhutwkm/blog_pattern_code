class UsersController < ApplicationController
  def index
  end
<<<<<<< HEAD
end
=======

  def users_posts
    @users = User.all
  	if params[:username].nil? or params[:username].blank?
  		@posts_of_user = Post.all
  	else
  		@user = User.find_by(name: params[:username])
  		unless @user.nil?
  		 	@posts_of_user = Post.list_posts_of_user(@user) 
  		else
  		  @posts_of_user = Post.all
  		end		
  	end
  	@posts_of_user = @posts_of_user.paginate(:page => params[:page], :per_page  => 1)
  end

end
>>>>>>> master

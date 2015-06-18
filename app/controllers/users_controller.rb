class UsersController < ApplicationController

  skip_before_action :verify_authenticity_token
  
  def index
    @user = User.user_list(params[:page])
  end

  def edit#bat su kien edit hien thi thong tin tai cot can sua
    @user = User.edit(params[:id])
    @role = Role.all
  end

  def xu_ly_edit#ham de xu ly edit udate cac thong tin xuong db
    
    @rl = Role.edit_find(params[:role_name])
    # binding.pry
    User.xu_ly_edit(params[:id],params[:name],params[:email],@rl.id)
    redirect_to users_path
  end

  def list
      @users = User.all
  end

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

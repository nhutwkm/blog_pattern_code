class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @user = User.user_list(params[:page])
  end

  def edit#bat su kien edit hien thi thong tin tai cot can sua,sau khi ket thuc se nhay den update
    if (params[:user_id].to_i==current_user.id)||(current_user.role_id==1)
      @user = User.edit(params[:user_id])
      @role = Role.all
    else
      redirect_to users_path
    end
  end

  def update#ham de xu ly edit udate cac thong tin xuong db
    @user = params[:user]
    @rl = Role.edit_find(params[:role_name])
    User.xu_ly_edit(params[:id].to_i,@user[:name],@user[:email],@rl.id)
    redirect_to users_path
  end

  def list
      @users = User.all
  end

  def posts
      @user = User.find_by(id: params[:user_id])
      # binding.pry
      unless @user.nil?
        @posts_of_user = Post.list_posts_of_user(@user) 
      else
        @posts_of_user = Post.all
      end   
      @posts_of_user = @posts_of_user.paginate(:page => params[:page], :per_page  => 1)
  end
end
class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.user_list(params[:page])
  end

  def edit
  	@user = User.edit(params[:id])
    @role = Role.all
  end

  def xu_ly_edit
    
    @rl = Role.edit_find(params[:role_name])
    # binding.pry
  	User.xu_ly_edit(params[:id1],params[:name],params[:email],@rl.id)
  	redirect_to '/users/show'
  end

end

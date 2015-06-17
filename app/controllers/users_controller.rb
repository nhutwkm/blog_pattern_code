class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.user_list(params[:page])
  end

  def edit
  	@user = User.edit(params[:id])
  end

  def xu_ly_edit
  	User.xu_ly_edit(params[:id1],params[:name],params[:email],params[:role_id])
  	redirect_to '/users/show'
  end

end

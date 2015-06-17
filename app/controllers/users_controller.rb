class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.user_list(params[:page])
  end

end

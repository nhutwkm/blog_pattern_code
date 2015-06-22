class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    # before_action :authenticate_user!#kiem tra xem da dang nhap moi duoc chinh sua
    before_filter :configure_permitted_parameters, if: :devise_controller?
    before_filter :set_current_user
    @categories= Category.all
    protected

    def configure_permitted_parameters
      
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) << :name

      @role =Role.all
      devise_parameter_sanitizer.for(:sign_up) << :role_id
      devise_parameter_sanitizer.for(:account_update) << :role_id

    end


    def set_current_user
      User.current = current_user
    end
end

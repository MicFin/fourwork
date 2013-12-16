class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  

  protected

  def configure_permitted_parameters
    #add name to update profile
    devise_parameter_sanitizer.for(:account_update) << :name 
    #adds name to sign up
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end


end


# # sets up custom parameters sanitizer using strong parameters
#   # for devise. defined in lib/user_sanitizer.rb
#   before_filter :configure_devise_params, if: :devise_controller?
#   def configure_devise_params

#   end
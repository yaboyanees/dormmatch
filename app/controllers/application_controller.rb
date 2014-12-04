class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?  
  
  private
	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :f_name, :image, :school_id, :music, :saturday, :hobby, :major, :sleep, :gender, :score) }
		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :f_name, :image, :school_id, :room_id, :score) }
	end
	def student_params
		params.require(:student).permit(:email, :password, :password_confirmation, :f_name, :image, :school_id, :music, :saturday, :hobby, :major, :sleep, :gender, :score)
	end
end

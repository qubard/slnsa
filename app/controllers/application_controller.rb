class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize, :except => [:create, :login]
  skip_before_action :verify_authenticity_token
  
  layout "application"
  
  def index
	redirect_to '/dashboard'
  end
  
  def authorize
	if not session[:user_id] then
		redirect_to '/login'
	end
  end
end

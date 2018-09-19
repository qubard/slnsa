class LoginController < ActionController::Base
	def index
		if not session[:user_id] then
			@form = "login"
			render "layouts/auth"
		else
			redirect_to '/dashboard'
		end
	end
	
	def login
		@user = User.find_by(name: params[:username].downcase)
		if @user then
			if @user.authenticate(params[:password]) then  
				session[:user_id] = @user.id
				redirect_to '/', notice: 'You are now logged in.'
				return
			end
		end
		redirect_to '/', alert: 'Invalid login details.'
	end
end

class RegisterController < ActionController::Base
	def index
		if not session[:user_id] then
			@form = "register"
			render "layouts/auth"
		else
			redirect_to '/dashboard'
		end
	end
	
	def register
		if not User.exists?(name: params[:username]) then
			@user = User.new(name: params[:username], password: params[:password])
			if @user.validate && @user.save then
				redirect_to '/login', notice: "User registered."
			else
				redirect_to '/register', alert: "Something went wrong"
			end
			return
		end
		redirect_to '/register', alert: "That username is taken."
	end
end

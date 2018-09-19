class UsersController < ApplicationController
	
	def logout
		session[:user_id] = nil
		redirect_to '/', notice: 'You have been logged out.'
	end
end

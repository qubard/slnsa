class DatabaseController < ApplicationController

	def index
		@tab = 'database'
		@residents = Resident.all
	end
	
	def add
		@tab = 'database'
		render 'layouts/add_resident'
	end
	
	def save
		@tab = 'database'
		if params[:image] then
			@resident = Resident.new(name: params[:name], bio: params[:bio])
			if @resident.save
				File.open("public/avatars/#{params[:name]}.png", "w") do |f|
					f.binmode
					f.write params[:image].read
					f.flush
					f.close
				end
				render :json => '{"success": "Resident added."}'
				return
			end
		end
		render :json => '{"error": "Could not save."}'
	end
	
	def show
		@resident = Resident.find_by(name: params[:name])
		if @resident
			render 'layouts/resident'
		else 
			render :inline => "Resident does not exist"
		end
	end

end

class User < ApplicationRecord
	has_secure_password
	
	validates_presence_of :name
	validates_length_of :name, :maximum => 32
end

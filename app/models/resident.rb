class Resident < ApplicationRecord
	validates_presence_of :name
	validates_length_of :name, :maximum => 32
	
	validates_uniqueness_of :name
end

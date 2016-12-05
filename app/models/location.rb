class Location < ActiveRecord::Base
	#association 
	belongs_to :mail_item

	#validations
	validates_presences_of :latitude
	validates_presences_of :longitude
end

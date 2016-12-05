class Location < ActiveRecord::Base
	#association 
	belongs_to :mail_item

	#validations
	validates_presence_of :latitude
	validates_presence_of :longitude

	#scopes
end

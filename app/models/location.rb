class Location < ActiveRecord::Base
	#association 
	belongs_to :mail_item
	#validations
end

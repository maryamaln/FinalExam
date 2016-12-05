class MailItem < ActiveRecord::Base
	
	#association 
	has_one :location
	belongs_to :user

	#validations
end

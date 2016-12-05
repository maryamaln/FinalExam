class User < ActiveRecord::Base
	#association 
	has_many :mail_item

	#validations
	validates_presences_of :first_name
	validates_presences_of :last_name
	validates_presences_of :andrew_id
	validates_presences_of :username
	validates_presences_of :password
	validates_presences_of :facilities

	#scopes

	


end

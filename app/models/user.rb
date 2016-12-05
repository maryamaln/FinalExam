class User < ActiveRecord::Base
	#association 
	has_many :mail_item

	#validations
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :andrew_id
	validates_presence_of :username
	validates_presence_of :password
	validates_presence_of :facilities

	#scopes

	


end

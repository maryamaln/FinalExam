class User < ActiveRecord::Base
	#association 
	has_many :mail_item

	#validations

end

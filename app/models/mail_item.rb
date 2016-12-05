class MailItem < ActiveRecord::Base
	
	#association 
	has_one :location
	belongs_to :user

	#validations
	validates_presence_of :date_arrived_pittsburgh
	validates_presence_of :shipping_weight
	validates_presence_of :sender

	#scopes
	#d
	scope :arrivedinqatar, lambda { where("date_arrived_qatar < ?" , Date.today) }
	
	#c (given 3 days to ship out of pittsburgh)
	scope :shippedout, lambda { where("date_arrived_pittsburgh < ?" , Date.today+3)}

	#e that there is a date in the date delivered field
	scope :delivered, lambda { where("date_delivered < ?" , Date.today) }
	

	#f to view all history but by order of sender for ease
	scope :shippedallInfo, lambda { where("date_arrived_pittsburgh < ?" , Date.today+3)}
	
	#b order by arrival date to pittsburgh if it is after todays date (alreadt arrived)
	scope :shippedout, lambda { where("date_arrived_pittsburgh < ?" , Date.today)}



end

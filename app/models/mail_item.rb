class MailItem < ActiveRecord::Base
	
	#association 
	has_one :location
	belongs_to :user

	#validations
	validates_presences_of :date_arrived_pittsburgh
	validates_presences_of :shipping_weight
	validates_presences_of :sender

	#scopes
	#d
	scope :arrived_in_qatar, =>(time) {where(Date.today=date_arrived_qatar)}
	#c (given 3 days to ship out of pittsburgh)
	scope :shipped, =>(time) {where(Date.today=date_arrived_pittsburgh+3)}
	#e that there is a date in the date delivered field
	scope :delivered, :where => { :date_delivered => true}
	#f to view all history but by order of sender for ease
	scope :alphabeticalbysender, => {order('sender ASC')}
	#b order by arrival date to pittsburgh if found
	scope :byarrivaldate, :where => { :date_arrived_pittsburgh => true}

end

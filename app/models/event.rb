class Event < ActiveRecord::Base
	belongs_to :creator, :class_name => "User"
	has_many :invitees

	# Assign invitees from a comma or space delimited string
	def invitee_string
	
	end
end

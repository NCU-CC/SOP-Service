class Place < ActiveRecord::Base
	self.table_name = "Place"
	self.inheritance_column = :_type_disabled
	# attr_accessible :type
	establish_connection :production_location

	# have_many :
end

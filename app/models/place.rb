class Place < ActiveRecord::Base
	self.table_name = "Place"
	establish_connection :production_location

end

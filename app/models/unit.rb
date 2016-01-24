class Unit < ActiveRecord::Base
	self.table_name = "Unit"
	establish_connection :production_location

end

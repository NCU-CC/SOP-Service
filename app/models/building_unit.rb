class BuildingUnit < ActiveRecord::Base
	self.table_name = "Building_Unit"
	establish_connection :production_location
end

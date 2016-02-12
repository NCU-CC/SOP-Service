class Unit < ActiveRecord::Base
	self.table_name = "Unit"
	establish_connection :production_location

	has_many :building_units , :foreign_key => 'unit_no'
	has_many :places , :through=> :building_units
end

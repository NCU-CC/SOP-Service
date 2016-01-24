class Building < ActiveRecord::Base
	self.table_name = "Building_Unit"
	# establish_connection :location_development
	establish_connection "#{Rails.env}_location"
end

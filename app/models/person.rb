class Person < ActiveRecord::Base
	self.table_name = "Person"
	# establish_connection :location_development
	establish_connection "#{Rails.env}_location"
end

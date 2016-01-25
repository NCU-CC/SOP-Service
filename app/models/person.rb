class Person < ActiveRecord::Base
	self.table_name = "Person"
	# establish_connection  "#{Rails.env}_location"
	establish_connection :production_location
end

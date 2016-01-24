class Person < ActiveRecord::Base
	self.table_name = "Person"
	establish_connection :production_location
end

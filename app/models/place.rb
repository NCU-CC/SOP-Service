class Place < ActiveRecord::Base
	self.table_name="Place"
	establish_connection "#{Rails.env}_location"
end

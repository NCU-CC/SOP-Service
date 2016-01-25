module API
	module Entities
		class Person < Grape::Entity
			expose :id
			expose :cname
			expose :title
			expose :primary_unit_no
			expose :secondary_unit_no

			# expose :cname

		end
	end
end
module API
	module Entities
		class Unit < Grape::Entity
			expose :unit_no
			expose :cname
			expose :ename
			expose :full_name

		end
	end
end
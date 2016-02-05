module API
	module Entities
		class Unit < Grape::Entity
			expose :unit_no
			expose :cname
			expose :ename
			expose :full_name
			# expose :contact_info do
				# expose :place, merge: true, using:  API::Entities::Place
			# end
			
		end
	end
end
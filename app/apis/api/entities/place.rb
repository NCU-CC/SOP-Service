module API
	module Entities
		class Place < Grape::Entity
			expose :id
			expose :cname

		end
	end
end
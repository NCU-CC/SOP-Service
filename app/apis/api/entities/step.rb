module API
	module Entities
		class Step < Grape::Entity
			expose :id
			expose :action
			expose :items
			expose :prev
			expose :next
			expose :flow_id
			expose :PersonId
			expose :UnitId
			expose :PlaceId

			# expose :cname

		end
	end
end
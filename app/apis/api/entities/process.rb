module API
	module Entities
		class Process < Grape::Entity
			expose :id
			expose :name
		end
	end
end
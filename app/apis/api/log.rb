module API
		module Log
			extend Grape::API::Helpers
			
		def Process_log action
        	Flowlog.create!({
                    action: action
                })
      	end

      	def Step_log action
      		Steplog.create!({
      			action: action
      			})
      	end
  end
end
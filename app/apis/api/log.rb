module API
		module Log
			extend Grape::API::Helpers
			
		def Process_log action,user,client_id,process_id
        	Flowlog.create!({
            action: action,
            user: user,
            client_id: client_id,
            flow_id: process_id

          })
      	end

      	def Step_log action
      		Steplog.create!({
      			action: action
      		})
      	end
  end
end
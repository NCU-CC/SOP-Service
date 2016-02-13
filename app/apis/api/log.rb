module API
		module Log
			extend Grape::API::Helpers
			
		def Process_log action
        	Flowlog.create!({
                    action: action,
                })
      	end
  end
end
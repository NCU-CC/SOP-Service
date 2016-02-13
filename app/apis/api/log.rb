module API
		module Log
			extend Grape::API::Helpers
			
		  def log action
        Steplog.create!({
                    action: action,
                })
      end
  end
end
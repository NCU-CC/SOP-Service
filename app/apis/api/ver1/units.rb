module API
  module Ver1
    class Units < Grape::API

    	resource :units do
    		desc 'Return all unit.'
    		get do
    	        Unit.all
    	        # ['ddd']
    		end
      	end
    end
 end
end
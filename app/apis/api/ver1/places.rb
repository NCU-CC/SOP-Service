module API
  module Ver1
    class Places < Grape::API

    	resource :places do
    		desc 'Return all Place.'
    		get do
    	        Place.all
    		end
      	end
    end
 end
end
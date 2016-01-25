module API
  module Ver1
    class People < Grape::API

    	resource :people do
    		desc 'Return all Person.'
    		get do
    	        Person.all
    		end
      	end
    end
 end
end
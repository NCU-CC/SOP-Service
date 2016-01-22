module API
  module Ver1
    class Processes < Grape::API

    	resource :processes do

        	# GET /api/v1/products
        	desc 'Return all products.'
        	get do
        		['bay']
        	end

        	# GET /api/v1/processes/{:id}
        	# desc 'Return a product.'
        	# params do
        	# end
        	# get ':id' do
        	# end
      	end

    end
 end
end
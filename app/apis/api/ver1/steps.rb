module API
  module Ver1
    class Steps < Grape::API

    	resource :steps do

        	# GET /api/v1/products
        	desc 'Return all Steps.'
        	get do
        		# ['steps']
                Step.all
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
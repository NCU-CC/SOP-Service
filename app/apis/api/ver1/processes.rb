module API
  module Ver1
    class Processes < Grape::API

    	resource :processes do

        	# GET /api/v1/products
        	desc 'Return all processes.'
        	get do
        		# ['processes']
                flow=Flow.all
                present flow , with: API::Entities::Process
        	end

            
        	desc 'Return a Process.'
            params do
              requires :process_id, type: Integer, desc: 'Process id.'
            end
            get ':process_id' do
              flow=Flow.find(params[:process_id])
              present flow , with: API::Entities::Process
            end

            route_param :process_id do
                resource :steps do
                    get do
                        # Flow.find(params[:id])
                        # :id
                        Flow.find(params[:process_id]).steps
                    end
                end
            end

      	end
    end
 end
end
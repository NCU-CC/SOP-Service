module API
  module Ver1
    class Processes < Grape::API

    	resource :processes do

        	# GET /api/v1/products
        	desc 'Return all processes.'
        	get do
        		# ['processes']
                Flow.all
        	end

            
        	desc 'Return a Process.'
                    params do
                      requires :process_id, type: Integer, desc: 'Process id.'
                    end
                    get ':id' do
                      Flow.find(params[:process_id])
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

            # route_param :company_id do
            #         resource :service_requests do
            #           get do
            #             Company.find(params[:company_id]).service_requests
            #           end
            #     end
            # end

      	end
    end
 end
end
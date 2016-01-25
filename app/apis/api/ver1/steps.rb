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

            desc "Return a step"
            params do
                requires :id ,type: Integer, desc: "Step identifier"
            end
            get ':id' do 
                Step.find(params[:id])
            end

            desc "Create a step"
            params do
                requires :action, type: String, desc: "you need to do something"
                requires :items, type: String, desc: "you need take something"
                requires :prev, type:String, desc: "previous step"
                requires :next, type:String, desc: "next step"
                requires :flow_id, type:String, desc: "belong what's process"
            end
            post do
                Step.create!({
                    action: params[:action],
                    items: params[:items],
                    prev: params[:prev],
                    next:params[:next],
                    Flow_id: params[:flow_id]
                })

            end

            desc "update a step"
            params do
                requires :id,type: Integer, desc: "Step identifier"
                optional :action, type: String, desc: "you need to do something"
                optional :items, type: String, desc: "you need take something"
                optional :prev, type:String, desc: "previous step"
                optional :next, type:String, desc: "next step"
            end

            put do
                step=Step.find(params[:id])
                step.action=params[:action] unless params[:action].nil?
                step.items=params[:items] unless params[:items].nil?
                step.prev=params[:prev] unless params[:prev].nil?
                step.next=params[:next] unless params[:next].nil?
                step.save
            end
            
            
      	end

    end
 end
end
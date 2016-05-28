module API
  module Ver1
    class Steps < Grape::API
        helpers API::Log
        helpers API::Helpers

        before do 
            @res=token_check
            header 'Content-Type', 'application/json;charset=UTF-8'
        end

        after do 
            unless request.request_method=='GET'
                Step_log request.request_method,@res['user'],@res['client_id'],@id
            end
            
        end

    	resource :steps do

        	# GET /api/v1/products
        	desc 'Return all Steps.'
        	get do
                step=Step.where(:flag=>nil).all
                present step ,with: API::Entities::Step
        	end

            desc "Return a step"
            params do
                requires :id ,type: Integer, desc: "Step identifier"
            end
            get ':id' do 
                step=Step.find(params[:id])
                present step ,with: API::Entities::Step
            end

            desc "Create a step"
            params do
                requires :action, type: String, desc: "you need to do something"
                requires :items, type: String, desc: "you need take something"
                requires :prev, type:String, desc: "previous step"
                requires :next, type:String, desc: "next step"
                requires :Flow_id, type:String, desc: "belong what's process"
            end
            post do
                Step.create!({
                    action: params[:action],
                    items: params[:items],
                    prev: params[:prev],
                    next:params[:next],
                    flow_id: params[:flow_id]
                })
                step=Step.last
                @id=step.id
                present step ,with: API::Entities::Step
            end

            desc "update a step"
            params do
                requires :id,type: Integer, desc: "Step identifier"
                optional :action, type: String, desc: "you need to do something"
                optional :items, type: String, desc: "you need take something"
                optional :prev, type:String, desc: "previous step"
                optional :next, type:String, desc: "next step"
            end

            put ':id' do
                step=Step.find(params[:id])
                step.action=params[:action] unless params[:action].nil?
                step.items=params[:items] unless params[:items].nil?
                step.prev=params[:prev] unless params[:prev].nil?
                step.next=params[:next] unless params[:next].nil?
                step.save
                present step ,with: API::Entities::Step
            end

            desc "delete a Process"
            delete ':id' do
                press=Step.find(params[:id])
                process.flag=false
                process.save
                ['success']
            end
            
            
      	end

    end
 end
end
module API
  module Ver1
    class Processes < Grape::API
         
        helpers API::Log
        helpers API::Helpers

        ### before action that 
        before do 
            @res=token_check
            header 'Content-Type', 'application/json;charset=UTF-8'
        end

        
        ### after action that record the log expect 'Get'
        after do 
            unless request.request_method=='GET'
                Process_log request.request_method,@res['user'],@res['client_id'],@id
            end
            
        end
        ###

    	resource :processes do

        	#####
            #####GET alll
        	desc 'Return all processes.'
        	get do
                flow=Flow.where(:flag=>nil).all
                present flow , with: API::Entities::Process
        	end

            #####
            #####Get one process
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
                        Flow.find(params[:process_id]).steps
                    end
                end
            end

            ###
            ### POST a Process
            desc "Create a Process"
            params do
                requires :name, type: String, desc: "name of Process"
            end
            post do
                Flow.create!({
                    name: params[:name],
                })
                flow=Flow.last
                @id=flow.id
                present flow , with: API::Entities::Process
                ##新增後顯示

            end


            ###
            ### PUT a Process
            desc "update a Process"
            params do
                requires :name, type: String, desc: "name of Process"
            end
            put ':id' do
                @id=params[:id]
                flow=Flow.find(params[:id])
                flow.name=params[:name] unless params[:name].nil?
                flow.save
                present flow , with: API::Entities::Process
            end

            ###
            ### DELETE a Process
            desc "delete a Process"
            delete ':id' do
                @id=params[:id]
                process=Flow.find(params[:id])
                process.flag=false
                process.save
                ['success']
            end


      	end

    end
 end
end
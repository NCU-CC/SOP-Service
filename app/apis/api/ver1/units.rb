module API
  module Ver1
    class Units < Grape::API

        helpers API::Log
        helpers API::Helpers

        

    	resource :units do
    		desc 'Return all unit.'
    		get do
    	        unit =Unit.all
                present unit, with: API::Entities::Unit
    		end


            #應該為get ，但字串無法parse
            desc 'Return a unit'
            params do
                requires :unit_no, type: String, desc: "Unit identifier"
            end
            get ':unit_no' do

                unit=Unit.find(params[:unit_no])  
                present unit, with: API::Entities::Unit
            
            end
      	end
    end
 end
end
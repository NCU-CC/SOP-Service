module API
  module Ver1
    class Places < Grape::API
      helpers API::Helpers
      before do 
          @res=token_check
          header 'Content-Type', 'application/json;charset=UTF-8'
      end
      
    	resource :places do
    		desc 'Return all Place.'
    		get do
    	        place=Place.all
    	        present place, with: API::Entities::Place
    		end
            
        desc 'Return a Place.'
        params do
          requires :id, type: Integer, desc: 'Person id.'
        end
        get ':id' do
          place=Place.find(params[:id])
          present place , with: API::Entities::Place
        end
      end
    end
 end
end
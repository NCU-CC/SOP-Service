module API
  module Ver1
    class Places < Grape::API

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
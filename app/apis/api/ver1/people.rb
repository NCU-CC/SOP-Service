module API
  module Ver1
    class People < Grape::API
      helpers API::Helpers
      before do 
          @res=token_check
          header 'Content-Type', 'application/json;charset=UTF-8'
      end
      
    	resource :people do
    		desc 'Return all Person.'
    		get do
    	      person=Person.all
    	      present person, with: API::Entities::Person
        end
            
        desc 'Return a Person.'
        params do
          requires :id, type: Integer, desc: 'Person id.'
        end
        get ':id' do
          person=Person.find(params[:id])
          present person , with: API::Entities::Person
        end
            
      end
    end
 end
end
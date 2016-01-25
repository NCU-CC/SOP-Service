module API
  module Ver1
    class Units < Grape::API

    	resource :units do
    		desc 'Return all unit.'
    		get do
    	        unit =Unit.all
                present unit, with: API::Entities::Unit
    		end


            #應該為get ，但字串無法parse
            # desc 'Return a unit'
            # params do
            #     requires :unit_no, type: String, desc: "Unit identifier"
            # end
            # post  do
            #     # Unit.first
            #     place=Place.first
            #     unit=Unit.find_by unit_no: params[:unit_no]
            #     b=present unit, as: :users, with: API::Entities::Unit
            #     a=present place, as: :us, with: API::Entities::Place
            #     # Unit.find_by unit_no: params[:unit_no]
            # end
      	end
    end
 end
end
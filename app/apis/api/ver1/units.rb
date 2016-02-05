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
            desc 'Return a unit'
            params do
                requires :unit_no, type: String, desc: "Unit identifier"
            end
            get ':unit_no' do
                # Unit.first
                # place=Place.first
                # ['wdwdw']
                unit=Unit.find(params[:unit_no])                
                # building_unit=BuildingUnit.find_by unit_no: params[:unit_no]
                # place=Place.find_by id: building_unit.place_id
                # unit.reverse_merge!(place)
                # present place , with: API::Entities::Place
                present unit, with: API::Entities::Unit
                # unit=Unit.find_by unit_no: params[:unit_no]
                # b=present unit, as: :users, with: API::Entities::Unit
                # a=present place, as: :us, with: API::Entities::Place
                # Unit.find_by unit_no: params[:unit_no]
            end
      	end
    end
 end
end
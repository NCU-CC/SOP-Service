class AddPlaceIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :PlaceId, :integer
  end
end

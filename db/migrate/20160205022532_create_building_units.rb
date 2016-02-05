class CreateBuildingUnits < ActiveRecord::Migration
  def change
    create_table :building_units do |t|

      t.timestamps null: false
    end
  end
end

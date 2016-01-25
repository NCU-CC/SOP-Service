class AddUnitIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :UnitId, :string
  end
end

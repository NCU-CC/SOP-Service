class RemovePersonIdFromStep < ActiveRecord::Migration
  def change
    remove_column :steps, :Person_id, :integer
  end
end

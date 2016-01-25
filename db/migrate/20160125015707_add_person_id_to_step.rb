class AddPersonIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :PersonId, :integer
  end
end

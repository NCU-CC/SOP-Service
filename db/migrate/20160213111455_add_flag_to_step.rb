class AddFlagToStep < ActiveRecord::Migration
  def change
    add_column :steps, :flag, :boolean
  end
end

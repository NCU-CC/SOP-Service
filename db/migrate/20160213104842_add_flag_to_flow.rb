class AddFlagToFlow < ActiveRecord::Migration
  def change
    add_column :flows, :flag, :boolean
  end
end

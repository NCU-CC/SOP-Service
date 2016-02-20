class AddStepIdToSteplog < ActiveRecord::Migration
  def change
    add_column :steplogs, :step_id, :integer
  end
end

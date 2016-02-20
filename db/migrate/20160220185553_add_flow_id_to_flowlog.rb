class AddFlowIdToFlowlog < ActiveRecord::Migration
  def change
    add_column :flowlogs, :flow_id, :integer
  end
end

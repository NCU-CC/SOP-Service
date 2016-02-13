class AddFlowToSteps < ActiveRecord::Migration
  def change
	add_reference :steps, :flow, index: true
    add_foreign_key   :steps, :flows
  end
end

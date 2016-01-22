class AddFlowToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :Flow, index: true, foreign_key: true
  end
end

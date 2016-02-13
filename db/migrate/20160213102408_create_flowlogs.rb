class CreateFlowlogs < ActiveRecord::Migration
  def change
    create_table :flowlogs do |t|
      t.string :action
      t.string :user
      t.string :client_id

      t.timestamps null: false
    end
  end
end

class CreateSteplogs < ActiveRecord::Migration
  def change
    create_table :steplogs do |t|
    	t.string :action
    	t.string :user
    	t.string :client_id
    	
    	t.timestamps null: false
    end
  end
end

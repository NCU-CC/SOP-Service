class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
    	t.string :action
    	t.string :items
    	t.string :prev
    	t.string :next
      t.timestamps null: false
    end
  end
end

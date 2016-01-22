class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

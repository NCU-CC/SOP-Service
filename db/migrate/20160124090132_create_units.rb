class CreateUnits < ActiveRecord::Migration
  def connection
      ActiveRecord::Base.establish_connection("#{Rails.env}_location").connection
  end
  def change
    # create_table :units do |t|

    #   t.timestamps null: false
    # end
  end
end

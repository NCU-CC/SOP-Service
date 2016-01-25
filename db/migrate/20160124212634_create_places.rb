class CreatePlaces < ActiveRecord::Migration
  def connection
      ActiveRecord::Base.establish_connection("#{Rails.env}_location").connection
  end
  def change
    # create_table :places do |t|

    #   t.timestamps null: false
    # end
  end
end

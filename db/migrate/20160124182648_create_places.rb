class CreatePlaces < ActiveRecord::Migration
  def connection
      ActiveRecord::Base.establish_connection("#{Rails.env}_location").connection
  end

  def change
    
  end
end

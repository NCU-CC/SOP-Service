class CreatePeople < ActiveRecord::Migration
	def connection
	    ActiveRecord::Base.establish_connection("#{Rails.env}_location").connection
	end
  def change
    # create_table :people do |t|
      
      # t.string :portal_id
      # t.string :personal_no
      # t.string :cname
      # t.string :ename
      # t.string :title
      # t.string :primary_unit_no
      # t.string :secondary_unit_no
      # t.string :office_phone
      
      

      # t.timestamps null: false
    # end
  end
end

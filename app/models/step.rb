class Step < ActiveRecord::Base
	belongs_to :flow
	
	# serialize :items  
	# serialize :next
	# serialize :prev
end

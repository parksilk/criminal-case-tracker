class Evidence < ActiveRecord::Base
	set_table_name 'evidence'
	belongs_to :case
end

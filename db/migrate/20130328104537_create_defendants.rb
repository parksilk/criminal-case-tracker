class CreateDefendants < ActiveRecord::Migration
  def change
  	create_table :defendants do |t|
  		t.string  :name
  		t.integer :case_id

  		t.timestamps
  	end
  end
end

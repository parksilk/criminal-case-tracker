class CreateLawyers < ActiveRecord::Migration
  def change
  	create_table :lawyers do |t|
  		t.string  :name
  		t.string  :phone
  		t.integer :lawyer_type
  		
  		t.timestamps
  	end
  end
end

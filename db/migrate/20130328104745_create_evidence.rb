class CreateEvidence < ActiveRecord::Migration
  def change
  	create_table :evidence do |t|
  		t.string  :name
  		t.text    :description
  		t.integer :exhibit_number
  		t.integer :case_id
  		
  		t.timestamps
  	end
  end
end

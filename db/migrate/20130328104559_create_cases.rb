class CreateCases < ActiveRecord::Migration
  def change
  	create_table :cases do |t|
  		t.integer :case_number
  		t.integer :judge_id

  		t.timestamps
  	end
  end
end

class CreateDockets < ActiveRecord::Migration
  def change
	  create_table :dockets do |t|
		t.integer :lawyer_id
		t.integer :case_id

		t.timestamps
  end
end

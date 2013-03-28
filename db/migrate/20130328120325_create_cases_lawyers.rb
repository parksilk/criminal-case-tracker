class CreateCasesLawyers < ActiveRecord::Migration
  def change
		  create_table :cases_lawyers do |t|
			t.integer :lawyer_id
			t.integer :case_id
		end
  end
end

class CreateFollowUp1Years < ActiveRecord::Migration
  def change
    create_table :follow_up1_years do |t|
		t.integer :subject_id
		t.integer :fu1year_fuq_1
		t.integer :fu1year_fuq_2
		t.integer :fu1year_fuq_2a
		t.integer :fu1year_fuq_3
		t.integer :fu1year_fuq_3a
		t.integer :fu1year_fuq_4
		t.integer :fu1year_fuq_4a_level
		t.integer :fu1year_fuq_4a_type
		t.integer :fu1year_fuq_4b
		t.integer :fu1year_fuq_5
		t.integer :fu1year_fuq_5a
		t.integer :fu1year_fuq_6
		t.integer :fu1year_fuq_6a
		t.integer :fu1year_fuq_7
		t.references :subject

		t.timestamps
    end
    add_index :follow_up1_years, :subject_id
  end
end

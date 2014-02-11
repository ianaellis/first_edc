class CreateFollowUp6Weeks < ActiveRecord::Migration
  def change
    create_table :follow_up6_weeks do |t|
		t.integer :subject_id
		t.integer :fu6week_fuq_1
		t.integer :fu6week_fuq_2
		t.integer :fu6week_fuq_2a
		t.integer :fu6week_fuq_3
		t.integer :fu6week_fuq_3a
		t.integer :fu6week_fuq_4
		t.integer :fu6week_fuq_4a_level
		t.integer :fu6week_fuq_4a_type
		t.integer :fu6week_fuq_4b
		t.integer :fu6week_fuq_5
		t.integer :fu6week_fuq_5a
		t.integer :fu6week_fuq_6
		t.integer :fu6week_fuq_6a
		t.integer :fu6week_fuq_7
		t.references :subject
	

      t.timestamps
    end
    add_index :follow_up6_weeks, :subject_id
  end
end

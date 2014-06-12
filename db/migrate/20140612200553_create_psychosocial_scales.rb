class CreatePsychosocialScales < ActiveRecord::Migration
  def change
    create_table :psychosocial_scales do |t|
		t.integer :psy_scale_ptcs_1
		t.integer :psy_scale_ptcs_2
		t.integer :psy_scale_ptcs_3
		t.integer :psy_scale_ptcs_4
		t.integer :psy_scale_ptcs_5
		t.integer :psy_scale_ptcs_6
		t.integer :psy_scale_ptcs_7
		t.integer :psy_scale_ptcs_8
		t.integer :psy_scale_ptcs_9
		t.integer :psy_scale_ptcs_10
		t.integer :psy_scale_ptcs_11
		t.integer :psy_scale_ptcs_12
		t.integer :psy_scale_ptcs_13
		t.integer :psy_scale_ptcs_14
		t.integer :psy_scale_ptcs_15
		t.integer :psy_scale_ptcs_16
		t.integer :psy_scale_ptcs_17
      t.timestamps
    end
  end
end

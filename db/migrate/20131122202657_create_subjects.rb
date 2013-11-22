class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
		t.integer :subject_id
		t.integer :study_site
		t.integer :pref_rand
		t.integer :treatment_group
		t.integer :sc_smpsq_1
		t.integer :sc_smpsq_2
		t.integer :sc_smpsq_3
		t.integer :sc_smpsq_4
		t.integer :sc_smpsq_4a
		t.integer :sc_smpsq_5
		t.integer :sc_smpsq_6
		t.integer :sc_smpsq_7
		t.integer :sc_smpsq_8
		t.integer :sc_smpsq_9
		t.integer :sc_smpsq_10
		t.integer :sc_exc_1
		t.integer :sc_exc_2
		t.integer :sc_exc_3
		t.integer :sc_pd_1
		t.integer :sc_pd_1a
		t.integer :sc_pd_2
		t.integer :sc_pd_3
		t.integer :sc_pd_4
		t.string :sc_pd_4o
		t.integer :sc_pd_5
		t.integer :sc_pd_6
		t.integer :sc_pe_1
		t.integer :sc_pe_2
		t.integer :sc_pe_3
		t.integer :sc_pe_4
		t.string :sc_pe_4a
		t.integer :sc_pe_5
		t.integer :sc_pe_5o
		t.integer :sc_ic_1
		t.integer :sc_ic_2
		t.date :sc_ic_3
		t.string :sc_ic_4
		t.integer :sc_ic_5
		t.string :sc_is_1
		t.string :sc_is_2
		t.date :sc_is_3
		t.string :sc_is_4
      t.timestamps
    end
  end
end

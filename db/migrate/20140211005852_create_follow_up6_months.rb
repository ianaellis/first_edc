class CreateFollowUp6Months < ActiveRecord::Migration
  def change
    create_table :follow_up6_months do |t|
		t.integer :subject_id
		t.integer :fu6month_smfa_1
		t.integer :fu6month_smfa_2
		t.integer :fu6month_smfa_3
		t.integer :fu6month_smfa_4
		t.integer :fu6month_smfa_5
		t.integer :fu6month_smfa_6
		t.integer :fu6month_smfa_7
		t.integer :fu6month_smfa_8
		t.integer :fu6month_smfa_9
		t.integer :fu6month_smfa_10
		t.integer :fu6month_smfa_11
		t.integer :fu6month_smfa_12
		t.integer :fu6month_smfa_13
		t.integer :fu6month_smfa_14
		t.integer :fu6month_smfa_15
		t.integer :fu6month_smfa_16
		t.integer :fu6month_smfa_17
		t.integer :fu6month_smfa_18
		t.integer :fu6month_smfa_19
		t.integer :fu6month_smfa_20
		t.integer :fu6month_smfa_21
		t.integer :fu6month_smfa_22
		t.integer :fu6month_smfa_23
		t.integer :fu6month_smfa_24
		t.integer :fu6month_smfa_25
		t.integer :fu6month_smfa_26
		t.integer :fu6month_smfa_27
		t.integer :fu6month_smfa_28
		t.integer :fu6month_smfa_29
		t.integer :fu6month_smfa_30
		t.integer :fu6month_smfa_31
		t.integer :fu6month_smfa_32
		t.integer :fu6month_smfa_33
		t.integer :fu6month_smfa_34
		t.integer :fu6month_smfa_35
		t.integer :fu6month_smfa_36
		t.integer :fu6month_smfa_37
		t.integer :fu6month_smfa_38
		t.integer :fu6month_smfa_39
		t.integer :fu6month_smfa_40
		t.integer :fu6month_smfa_41
		t.integer :fu6month_smfa_42
		t.integer :fu6month_smfa_43
		t.integer :fu6month_smfa_44
		t.integer :fu6month_smfa_45
		t.integer :fu6month_smfa_46
		t.integer :fu6month_phq_1
		t.integer :fu6month_phq_2
		t.integer :fu6month_phq_3
		t.integer :fu6month_phq_4
		t.integer :fu6month_phq_5
		t.integer :fu6month_phq_6
		t.integer :fu6month_phq_7
		t.integer :fu6month_phq_8
		t.integer :fu6month_phq_9
		t.integer :fu6month_phq_10
		t.integer :fu6month_whoqol_1
		t.integer :fu6month_whoqol_2
		t.integer :fu6month_panas_1
		t.integer :fu6month_panas_2
		t.integer :fu6month_panas_3
		t.integer :fu6month_panas_4
		t.integer :fu6month_panas_5
		t.integer :fu6month_panas_6
		t.integer :fu6month_panas_7
		t.integer :fu6month_panas_8
		t.integer :fu6month_panas_9
		t.integer :fu6month_panas_10
		t.integer :fu6month_panas_11
		t.integer :fu6month_panas_12
		t.integer :fu6month_panas_13
		t.integer :fu6month_panas_14
		t.integer :fu6month_panas_15
		t.integer :fu6month_panas_16
		t.integer :fu6month_panas_17
		t.integer :fu6month_panas_18
		t.integer :fu6month_panas_19
		t.integer :fu6month_panas_20
		t.integer :fu6month_mses_1
		t.integer :fu6month_mses_2
		t.integer :fu6month_mses_3
		t.integer :fu6month_mses_4
		t.integer :fu6month_mses_5
		t.integer :fu6month_mses_6
		t.integer :fu6month_mses_7
		t.integer :fu6month_mses_8
		t.integer :fu6month_mses_9
		t.integer :fu6month_pam_1
		t.integer :fu6month_pam_2
		t.integer :fu6month_pam_3
		t.integer :fu6month_pam_4
		t.integer :fu6month_pam_5
		t.integer :fu6month_pam_6
		t.integer :fu6month_pam_7
		t.integer :fu6month_pam_8
		t.integer :fu6month_pam_9
		t.integer :fu6month_pam_10
		t.integer :fu6month_pam_11
		t.integer :fu6month_pam_12
		t.integer :fu6month_pam_13
		t.integer :fu6month_spsi_1
		t.integer :fu6month_spsi_2
		t.integer :fu6month_spsi_3
		t.integer :fu6month_spsi_4
		t.integer :fu6month_spsi_5
		t.integer :fu6month_spsi_6
		t.integer :fu6month_spsi_7
		t.integer :fu6month_spsi_8
		t.integer :fu6month_spsi_9
		t.integer :fu6month_spsi_10
		t.integer :fu6month_spsi_11
		t.integer :fu6month_spsi_12
		t.integer :fu6month_spsi_13
		t.integer :fu6month_spsi_14
		t.integer :fu6month_spsi_15
		t.integer :fu6month_spsi_16
		t.integer :fu6month_spsi_17
		t.integer :fu6month_spsi_18
		t.integer :fu6month_spsi_19
		t.integer :fu6month_spsi_20
		t.integer :fu6month_spsi_21
		t.integer :fu6month_spsi_22
		t.integer :fu6month_spsi_23
		t.integer :fu6month_spsi_24
		t.integer :fu6month_spsi_25
		t.integer :fu6month_soc_1
		t.integer :fu6month_soc_2
		t.integer :fu6month_soc_3
		t.integer :fu6month_soc_4
		t.integer :fu6month_soc_5
		t.integer :fu6month_soc_6
		t.integer :fu6month_pu_1
		t.integer :fu6month_pu_2
		t.integer :fu6month_pu_3
		t.integer :fu6month_pu_4
		t.integer :fu6month_cpg_1
		t.integer :fu6month_cpg_2
		t.integer :fu6month_cpg_3
		t.integer :fu6month_cpg_4
		t.integer :fu6month_cpg_5
		t.integer :fu6month_cpg_6
		t.integer :fu6month_cpg_7
		t.integer :fu6month_comp_1
		t.integer :fu6month_comp_2
		t.integer :fu6month_comp_3
		t.integer :fu6month_comp_4
		t.integer :fu6month_comp_5_a1
		t.integer :fu6month_comp_5_a2
		t.integer :fu6month_comp_5_a3
		t.integer :fu6month_comp_5_a4
		t.integer :fu6month_comp_5_a5
		t.integer :fu6month_comp_5_a6
		t.integer :fu6month_comp_5_a7
		t.integer :fu6month_comp_5b
		t.integer :fu6month_comp_5c
		t.integer :fu6month_comp_5c_level
		t.integer :fu6month_comp_5c_type
		t.integer :fu6month_mspss_1
		t.integer :fu6month_mspss_2
		t.integer :fu6month_mspss_3
		t.integer :fu6month_mspss_4
		t.integer :fu6month_mspss_5
		t.integer :fu6month_mspss_6
		t.integer :fu6month_mspss_7
		t.integer :fu6month_mspss_8
		t.integer :fu6month_mspss_9
		t.integer :fu6month_mspss_10
		t.integer :fu6month_mspss_11
		t.integer :fu6month_mspss_12
		t.integer :fu6month_audit_1
		t.integer :fu6month_audit_2
		t.integer :fu6month_audit_3
		t.references :subject

		t.timestamps
    end
    add_index :follow_up6_months, :subject_id
  end
end
class TreatmentCompletion < ActiveRecord::Base
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	belongs_to :subject
	attr_accessible :subject_id, :panas_present_moment_or_last_week
	attr_accessible :tc_smfa_1, :tc_smfa_2, :tc_smfa_3, :tc_smfa_4, :tc_smfa_5, :tc_smfa_6, :tc_smfa_7, :tc_smfa_8, :tc_smfa_9, :tc_smfa_10,   :tc_smfa_11,   :tc_smfa_12,   :tc_smfa_13,   :tc_smfa_14,   :tc_smfa_15,   :tc_smfa_16,   :tc_smfa_17,   :tc_smfa_18,   :tc_smfa_19,   :tc_smfa_20,   :tc_smfa_21,   :tc_smfa_22,   :tc_smfa_23,   :tc_smfa_24,   :tc_smfa_25,   :tc_smfa_26,   :tc_smfa_27,   :tc_smfa_28,   :tc_smfa_29,   :tc_smfa_30,   :tc_smfa_31,   :tc_smfa_32,   :tc_smfa_33,   :tc_smfa_34,   :tc_smfa_35,   :tc_smfa_36,   :tc_smfa_37,   :tc_smfa_38,   :tc_smfa_39,   :tc_smfa_40,   :tc_smfa_41,   :tc_smfa_42,   :tc_smfa_43,   :tc_smfa_44,   :tc_smfa_45,   :tc_smfa_46
    attr_accessible :tc_phq_1, :tc_phq_2,  :tc_phq_3,  :tc_phq_4,  :tc_phq_5,  :tc_phq_6,  :tc_phq_7,  :tc_phq_8,  :tc_phq_9,  :tc_phq_10, :tc_whoqol_1,  :tc_whoqol_2,  :tc_panas_1,   :tc_panas_2,   :tc_panas_3,   :tc_panas_4,   :tc_panas_5,   :tc_panas_6,   :tc_panas_7,   :tc_panas_8,   :tc_panas_9,   :tc_panas_10,  :tc_panas_11,  :tc_panas_12,  :tc_panas_13,  :tc_panas_14,  :tc_panas_15,  :tc_panas_16,  :tc_panas_17,  :tc_panas_18,  :tc_panas_19,  :tc_panas_20,  :tc_mses_1, :tc_mses_2, :tc_mses_3, :tc_mses_4, :tc_mses_5, :tc_mses_6, :tc_mses_7, :tc_mses_8, :tc_mses_9, :tc_pam_1,  :tc_pam_2,  :tc_pam_3,  :tc_pam_4,  :tc_pam_5,  :tc_pam_6,  :tc_pam_7,  :tc_pam_8,  :tc_pam_9,  :tc_pam_10, :tc_pam_11, :tc_pam_12, :tc_pam_13, :tc_spsi_1, :tc_spsi_2, :tc_spsi_3, :tc_spsi_4, :tc_spsi_5, :tc_spsi_6, :tc_spsi_7, :tc_spsi_8, :tc_spsi_9, :tc_spsi_10,   :tc_spsi_11,   :tc_spsi_12,   :tc_spsi_13,   :tc_spsi_14,   :tc_spsi_15,   :tc_spsi_16,   :tc_spsi_17,   :tc_spsi_18,   :tc_spsi_19,   :tc_spsi_20,   :tc_spsi_21,   :tc_spsi_22,   :tc_spsi_23,   :tc_spsi_24,   :tc_spsi_25,   :tc_soc_1,  :tc_soc_2,  :tc_soc_3,  :tc_soc_4,  :tc_soc_5,  :tc_soc_6,  :tc_pu_1,   :tc_pu_2,   :tc_pu_3,   :tc_pu_4,   :tc_cpg_1,  :tc_cpg_2,  :tc_cpg_3,  :tc_cpg_4,  :tc_cpg_5,  :tc_cpg_6,  :tc_cpg_7,  :tc_comp_1, :tc_comp_2, :tc_comp_3, :tc_comp_4, :tc_comp_5_a1, :tc_comp_5_a2, :tc_comp_5_a3, :tc_comp_5_a4, :tc_comp_5_a5, :tc_comp_5_a6, :tc_comp_5_a7, :tc_comp_5b,   :tc_comp_5c,   :tc_comp_5c_level,   :tc_comp_5c_type, :tc_mspss_1,   :tc_mspss_2,   :tc_mspss_3,   :tc_mspss_4,   :tc_mspss_5,   :tc_mspss_6,   :tc_mspss_7,   :tc_mspss_8,   :tc_mspss_9,   :tc_mspss_10,  :tc_mspss_11,  :tc_mspss_12,  :tc_audit_1,   :tc_audit_2,   :tc_audit_3,   :tc_ptcs_1, :tc_ptcs_2, :tc_ptcs_3, :tc_ptcs_4, :tc_ptcs_5, :tc_ptcs_6, :tc_ptcs_7, :tc_ptcs_8, :tc_ptcs_9, :tc_ptcs_10,   :tc_ptcs_11,   :tc_ptcs_12,   :tc_ptcs_13,   :tc_ptcs_14,   :tc_ptcs_15,   :tc_ptcs_16,   :tc_ptcs_17,   :tc_ar_1,   :tc_ar_2,   :tc_ar_3,   :tc_ar_4,   :tc_ar_5,   :tc_ar_6,   :tc_ar_7,   :tc_ar_8,   :tc_ar_9,   :tc_ar_9o,  :tc_sat_1,  :tc_sat_2,  :tc_sat_3,  :tc_sat_4,  :tc_sat_5,  :tc_sat_6,  :tc_sat_7,  :tc_sat_8,  :tc_sat_9,  :tc_sat_10, :tc_sat_11
    attr_accessible :tc_fuq_2, :tc_fuq_3, :tc_fuq_4, :tc_fuq_4a_level, :tc_fuq_4a_type, :tc_fuq_5, :tc_fuq_6
    attr_accessible :administration_method

    attr_writer :current_step

	def current_step
		@current_step || steps.first
	end

	def steps
		%w[smfa phq whoqol_bref positive_negative pam spsir ssscq prosthesis pain mspss audit ]   
	end

	def next_step
		self.current_step = steps[steps.index(current_step)+1]
	end

	def previous_step
		self.current_step = steps[steps.index(current_step)-1]
	end

	def first_step?
		current_step == steps.first
	end

	def last_step?
		current_step == steps.last
	end
end

class FollowUp6Month < ActiveRecord::Base
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	belongs_to :subject
	attr_accessible :subject_id, :panas_present_moment_or_last_week, :fu6month_crf_status
	attr_accessible :fu6month_smfa_1, :fu6month_smfa_2, :fu6month_smfa_3, :fu6month_smfa_4, :fu6month_smfa_5, :fu6month_smfa_6, :fu6month_smfa_7, :fu6month_smfa_8, :fu6month_smfa_9, :fu6month_smfa_10,   :fu6month_smfa_11,   :fu6month_smfa_12,   :fu6month_smfa_13,   :fu6month_smfa_14,   :fu6month_smfa_15,   :fu6month_smfa_16,   :fu6month_smfa_17,   :fu6month_smfa_18,   :fu6month_smfa_19,   :fu6month_smfa_20,   :fu6month_smfa_21,   :fu6month_smfa_22,   :fu6month_smfa_23,   :fu6month_smfa_24,   :fu6month_smfa_25,   :fu6month_smfa_26,   :fu6month_smfa_27,   :fu6month_smfa_28,   :fu6month_smfa_29,   :fu6month_smfa_30,   :fu6month_smfa_31,   :fu6month_smfa_32,   :fu6month_smfa_33,   :fu6month_smfa_34,   :fu6month_smfa_35,   :fu6month_smfa_36,   :fu6month_smfa_37,   :fu6month_smfa_38,   :fu6month_smfa_39,   :fu6month_smfa_40,   :fu6month_smfa_41,   :fu6month_smfa_42,   :fu6month_smfa_43,   :fu6month_smfa_44,   :fu6month_smfa_45,   :fu6month_smfa_46,   :fu6month_phq_1,  :fu6month_phq_2,  :fu6month_phq_3,  :fu6month_phq_4,  :fu6month_phq_5,  :fu6month_phq_6,  :fu6month_phq_7,  :fu6month_phq_8,  :fu6month_phq_9,  :fu6month_phq_10, :fu6month_whoqol_1,  :fu6month_whoqol_2,  :fu6month_panas_1,   :fu6month_panas_2,   :fu6month_panas_3,   :fu6month_panas_4,   :fu6month_panas_5,   :fu6month_panas_6,   :fu6month_panas_7,   :fu6month_panas_8,   :fu6month_panas_9,   :fu6month_panas_10,  :fu6month_panas_11,  :fu6month_panas_12,  :fu6month_panas_13,  :fu6month_panas_14,  :fu6month_panas_15,  :fu6month_panas_16,  :fu6month_panas_17,  :fu6month_panas_18,  :fu6month_panas_19,  :fu6month_panas_20,  :fu6month_mses_1, :fu6month_mses_2, :fu6month_mses_3, :fu6month_mses_4, :fu6month_mses_5, :fu6month_mses_6, :fu6month_mses_7, :fu6month_mses_8, :fu6month_mses_9, :fu6month_pam_1,  :fu6month_pam_2,  :fu6month_pam_3,  :fu6month_pam_4,  :fu6month_pam_5,  :fu6month_pam_6,  :fu6month_pam_7,  :fu6month_pam_8,  :fu6month_pam_9,  :fu6month_pam_10, :fu6month_pam_11, :fu6month_pam_12, :fu6month_pam_13, :fu6month_spsi_1, :fu6month_spsi_2, :fu6month_spsi_3, :fu6month_spsi_4, :fu6month_spsi_5, :fu6month_spsi_6, :fu6month_spsi_7, :fu6month_spsi_8, :fu6month_spsi_9, :fu6month_spsi_10,   :fu6month_spsi_11,   :fu6month_spsi_12,   :fu6month_spsi_13,   :fu6month_spsi_14,   :fu6month_spsi_15,   :fu6month_spsi_16,   :fu6month_spsi_17,   :fu6month_spsi_18,   :fu6month_spsi_19,   :fu6month_spsi_20,   :fu6month_spsi_21,   :fu6month_spsi_22,   :fu6month_spsi_23,   :fu6month_spsi_24,   :fu6month_spsi_25,   :fu6month_soc_1,  :fu6month_soc_2,  :fu6month_soc_3,  :fu6month_soc_4,  :fu6month_soc_5,  :fu6month_soc_6,  :fu6month_pu_1,   :fu6month_pu_2,   :fu6month_pu_3,   :fu6month_pu_4,   :fu6month_cpg_1,  :fu6month_cpg_2,  :fu6month_cpg_3,  :fu6month_cpg_4,  :fu6month_cpg_5,  :fu6month_cpg_6,  :fu6month_cpg_7,  :fu6month_comp_1, :fu6month_comp_2, :fu6month_comp_3, :fu6month_comp_4, :fu6month_comp_5_a1, :fu6month_comp_5_a2, :fu6month_comp_5_a3, :fu6month_comp_5_a4, :fu6month_comp_5_a5, :fu6month_comp_5_a6, :fu6month_comp_5_a7, :fu6month_comp_5b,   :fu6month_comp_5c,   :fu6month_comp_5c_level,   :fu6month_comp_5c_type, :fu6month_mspss_1,   :fu6month_mspss_2,   :fu6month_mspss_3,   :fu6month_mspss_4,   :fu6month_mspss_5,   :fu6month_mspss_6,   :fu6month_mspss_7,   :fu6month_mspss_8,   :fu6month_mspss_9,   :fu6month_mspss_10,  :fu6month_mspss_11,  :fu6month_mspss_12,  :fu6month_audit_1,   :fu6month_audit_2,   :fu6month_audit_3
    attr_accessible :fu6month_fuq_2, :fu6month_fuq_3, :fu6month_fuq_4, :fu6month_fuq_4a_level, :fu6month_fuq_4a_type, :fu6month_fuq_5, :fu6month_fuq_6
    attr_accessible :administration_method
    attr_accessible :fu6month_ar_1, :fu6month_ar_2, :fu6month_ar_3, :fu6month_ar_4, :fu6month_ar_5, :fu6month_ar_6, :fu6month_ar_7, :fu6month_ar_8, :fu6month_ar_9, :fu6month_ar_9o
    attr_accessible :fu6month_smoking_1, :fu6month_smoking_2, :fu6month_smoking_3, :fu6month_amp_side, :fu6month_fuq_2, :fu6month_fuq_2a, :fu6month_fuq_3, :fu6month_fuq_3a, :fu6month_fuq_4, :fu6month_fuq_4a_level, :fu6month_fuq_4a_type, :fu6month_fuq_4b, :fu6month_fuq_5, :fu6month_fuq_5a, :fu6month_fuq_6, :fu6month_fuq_6a, :fu6month_fuq_7
   	attr_accessible :fu6month_pu_2_bilateral_left, :fu6month_pu_3_bilateral_left

	attr_writer :current_step

	def current_step
		@current_step || steps.first
	end

	def steps
		%w[status smfa phq whoqol_bref positive_negative mses_self pam spsir ssscq prosthesis pain mspss audit medical_review]
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

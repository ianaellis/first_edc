class Subject < ActiveRecord::Base
   attr_accessible :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10
   attr_accessible :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5
   attr_accessible :base_smfa_1, :base_smfa_2, :base_smfa_3, :base_smfa_4, :base_smfa_5, :base_smfa_6, :base_smfa_7, :base_smfa_8, :base_smfa_9, :base_smfa_10, :base_smfa_11, :base_smfa_12, :base_smfa_13, :base_smfa_14, :base_smfa_15, :base_smfa_16, :base_smfa_17, :base_smfa_18, :base_smfa_19, :base_smfa_20, :base_smfa_21, :base_smfa_22, :base_smfa_23, :base_smfa_24, :base_smfa_25, :base_smfa_26, :base_smfa_27, :base_smfa_28, :base_smfa_29, :base_smfa_30, :base_smfa_31, :base_smfa_32, :base_smfa_33, :base_smfa_34, :base_smfa_35, :base_smfa_36, :base_smfa_37, :base_smfa_38, :base_smfa_39, :base_smfa_40, :base_smfa_41, :base_smfa_42, :base_smfa_43, :base_smfa_44, :base_smfa_45, :base_smfa_46, :base_phq_1, :base_phq_2, :base_phq_3, :base_phq_4, :base_phq_5, :base_phq_6, :base_phq_7, :base_phq_8, :base_phq_9, :base_phq_10, :base_whoqol_1, :base_whoqol_2, :base_panas_1, :base_panas_2, :base_panas_3, :base_panas_4, :base_panas_5, :base_panas_6, :base_panas_7, :base_panas_8, :base_panas_9, :base_panas_10, :base_panas_11, :base_panas_12, :base_panas_13, :base_panas_14, :base_panas_15, :base_panas_16, :base_panas_17, :base_panas_18, :base_panas_19, :base_panas_20, :base_mses_1, :base_mses_2, :base_mses_3, :base_mses_4, :base_mses_5, :base_mses_6, :base_mses_7, :base_mses_8, :base_mses_9, :base_pam_1, :base_pam_2, :base_pam_3, :base_pam_4, :base_pam_5, :base_pam_6, :base_pam_7, :base_pam_8, :base_pam_9, :base_pam_10, :base_pam_11, :base_pam_12, :base_pam_13, :base_spsi_1, :base_spsi_2, :base_spsi_3, :base_spsi_4, :base_spsi_5, :base_spsi_6, :base_spsi_7, :base_spsi_8, :base_spsi_9, :base_spsi_10, :base_spsi_11, :base_spsi_12, :base_spsi_13, :base_spsi_14, :base_spsi_15, :base_spsi_16, :base_spsi_17, :base_spsi_18, :base_spsi_19, :base_spsi_20, :base_spsi_21, :base_spsi_22, :base_spsi_23, :base_spsi_24, :base_spsi_25, :base_soc_1, :base_soc_2, :base_soc_3, :base_soc_4, :base_soc_5, :base_soc_6, :base_pu_1, :base_pu_2, :base_pu_3, :base_pu_4, :base_rbans_t1_1, :base_rbans_t2_1, :base_rbans_t3_1, :base_rbans_t4_1, :base_rbans_t1_2, :base_rbans_t2_2, :base_rbans_t3_2, :base_rbans_t4_2, :base_rbans_t1_3, :base_rbans_t2_3, :base_rbans_t3_3, :base_rbans_t4_3, :base_rbans_t1_4, :base_rbans_t2_4, :base_rbans_t3_4, :base_rbans_t4_4, :base_rbans_t1_5, :base_rbans_t2_5, :base_rbans_t3_5, :base_rbans_t4_5, :base_rbans_t1_6, :base_rbans_t2_6, :base_rbans_t3_6, :base_rbans_t4_6, :base_rbans_t1_7, :base_rbans_t2_7, :base_rbans_t3_7, :base_rbans_t4_7, :base_rbans_t1_8, :base_rbans_t2_8, :base_rbans_t3_8, :base_rbans_t4_8, :base_rbans_t1_9, :base_rbans_t2_9, :base_rbans_t3_9, :base_rbans_t4_9, :base_rbans_t1_10, :base_rbans_t2_10, :base_rbans_t3_10, :base_rbans_t4_10, :base_wais_a_1_t1, :base_wais_a_1_t2, :base_wais_a_2_t1, :base_wais_a_2_t2, :base_wais_a_3_t1, :base_wais_a_3_t2, :base_wais_a_4_t1, :base_wais_a_4_t2, :base_wais_a_5_t1, :base_wais_a_5_t2, :base_wais_a_6_t1, :base_wais_a_6_t2, :base_wais_a_7_t1, :base_wais_a_7_t2, :base_wais_a_8_t1, :base_wais_a_8_t2, :base_wais_b_1_t1, :base_wais_b_1_t2, :base_wais_b_2_t1, :base_wais_b_2_t2, :base_wais_b_3_t1, :base_wais_b_3_t2, :base_wais_b_4_t1, :base_wais_b_4_t2, :base_wais_b_5_t1, :base_wais_b_5_t2, :base_wais_b_6_t1, :base_wais_b_6_t2, :base_wais_b_7_t1, :base_wais_b_7_t2, :base_rbans_re_1, :base_rbans_re_2, :base_rbans_re_3, :base_rbans_re_4, :base_rbans_re_5, :base_rbans_re_6, :base_rbans_re_7, :base_rbans_re_8, :base_rbans_re_9, :base_rbans_re_10, :base_cq_1a, :base_cq_1b, :base_cq_1b_side, :base_cq_1c, :base_cq_1d, :base_cq_1d_joint, :base_cq_1e, :base_cq_1f, :base_cq_1g, :base_cq_2, :base_cq_2a, :base_cq_3a, :base_cq_3b, :base_cq_3c, :base_cq_3d, :base_cq_4, :base_cq_5, :base_cq_6, :base_cq_7, :base_cq_8, :base_cq_10_a1, :base_cq_10_a2, :base_cq_10_a3, :base_cq_10_a4, :base_cq_10_a5, :base_cq_10_a6, :base_cq_10_a7, :base_cq_10_b, :base_cq_10_c, :base_cq_10_c_level, :base_cq_10_c_type, :base_cpg_1, :base_cpg_2, :base_cpg_3, :base_cpg_4, :base_cpg_5, :base_cpg_6, :base_cpg_7, :base_mspss_1, :base_mspss_2, :base_mspss_3, :base_mspss_4, :base_mspss_5, :base_mspss_6, :base_mspss_7, :base_mspss_8, :base_mspss_9, :base_mspss_10, :base_mspss_11, :base_mspss_12, :base_audit_1, :base_audit_2, :base_audit_3
   attr_writer :current_step

   def current_step
   	@current_step || steps.first
   end

   def steps
   	%w[sfmfa phq whoqol_bref postive_negative mses_self pam spsir change_questionnaire prosthesis cognitive comorbidity pain mspss audit ]
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

class Subject < ActiveRecord::Base
   include ActiveModel::Conversion
   extend ActiveModel::Naming

   #Screening Variables
   attr_accessible :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10
   attr_accessible :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5
   #Baseline variables
   attr_accessible :base_smfa_1, :base_smfa_2, :base_smfa_3, :base_smfa_4, :base_smfa_5, :base_smfa_6, :base_smfa_7, :base_smfa_8, :base_smfa_9, :base_smfa_10, :base_smfa_11, :base_smfa_12, :base_smfa_13, :base_smfa_14, :base_smfa_15, :base_smfa_16, :base_smfa_17, :base_smfa_18, :base_smfa_19, :base_smfa_20, :base_smfa_21, :base_smfa_22, :base_smfa_23, :base_smfa_24, :base_smfa_25, :base_smfa_26, :base_smfa_27, :base_smfa_28, :base_smfa_29, :base_smfa_30, :base_smfa_31, :base_smfa_32, :base_smfa_33, :base_smfa_34, :base_smfa_35, :base_smfa_36, :base_smfa_37, :base_smfa_38, :base_smfa_39, :base_smfa_40, :base_smfa_41, :base_smfa_42, :base_smfa_43, :base_smfa_44, :base_smfa_45, :base_smfa_46, :base_phq_1, :base_phq_2, :base_phq_3, :base_phq_4, :base_phq_5, :base_phq_6, :base_phq_7, :base_phq_8, :base_phq_9, :base_phq_10, :base_whoqol_1, :base_whoqol_2, :base_panas_1, :base_panas_2, :base_panas_3, :base_panas_4, :base_panas_5, :base_panas_6, :base_panas_7, :base_panas_8, :base_panas_9, :base_panas_10, :base_panas_11, :base_panas_12, :base_panas_13, :base_panas_14, :base_panas_15, :base_panas_16, :base_panas_17, :base_panas_18, :base_panas_19, :base_panas_20, :base_mses_1, :base_mses_2, :base_mses_3, :base_mses_4, :base_mses_5, :base_mses_6, :base_mses_7, :base_mses_8, :base_mses_9, :base_pam_1, :base_pam_2, :base_pam_3, :base_pam_4, :base_pam_5, :base_pam_6, :base_pam_7, :base_pam_8, :base_pam_9, :base_pam_10, :base_pam_11, :base_pam_12, :base_pam_13, :base_spsi_1, :base_spsi_2, :base_spsi_3, :base_spsi_4, :base_spsi_5, :base_spsi_6, :base_spsi_7, :base_spsi_8, :base_spsi_9, :base_spsi_10, :base_spsi_11, :base_spsi_12, :base_spsi_13, :base_spsi_14, :base_spsi_15, :base_spsi_16, :base_spsi_17, :base_spsi_18, :base_spsi_19, :base_spsi_20, :base_spsi_21, :base_spsi_22, :base_spsi_23, :base_spsi_24, :base_spsi_25, :base_soc_1, :base_soc_2, :base_soc_3, :base_soc_4, :base_soc_5, :base_soc_6, :base_pu_1, :base_pu_2, :base_pu_3, :base_pu_4, :base_rbans_t1_1, :base_rbans_t2_1, :base_rbans_t3_1, :base_rbans_t4_1, :base_rbans_t1_2, :base_rbans_t2_2, :base_rbans_t3_2, :base_rbans_t4_2, :base_rbans_t1_3, :base_rbans_t2_3, :base_rbans_t3_3, :base_rbans_t4_3, :base_rbans_t1_4, :base_rbans_t2_4, :base_rbans_t3_4, :base_rbans_t4_4, :base_rbans_t1_5, :base_rbans_t2_5, :base_rbans_t3_5, :base_rbans_t4_5, :base_rbans_t1_6, :base_rbans_t2_6, :base_rbans_t3_6, :base_rbans_t4_6, :base_rbans_t1_7, :base_rbans_t2_7, :base_rbans_t3_7, :base_rbans_t4_7, :base_rbans_t1_8, :base_rbans_t2_8, :base_rbans_t3_8, :base_rbans_t4_8, :base_rbans_t1_9, :base_rbans_t2_9, :base_rbans_t3_9, :base_rbans_t4_9, :base_rbans_t1_10, :base_rbans_t2_10, :base_rbans_t3_10, :base_rbans_t4_10, :base_wais_a_1_t1, :base_wais_a_1_t2, :base_wais_a_2_t1, :base_wais_a_2_t2, :base_wais_a_3_t1, :base_wais_a_3_t2, :base_wais_a_4_t1, :base_wais_a_4_t2, :base_wais_a_5_t1, :base_wais_a_5_t2, :base_wais_a_6_t1, :base_wais_a_6_t2, :base_wais_a_7_t1, :base_wais_a_7_t2, :base_wais_a_8_t1, :base_wais_a_8_t2, :base_wais_b_1_t1, :base_wais_b_1_t2, :base_wais_b_2_t1, :base_wais_b_2_t2, :base_wais_b_3_t1, :base_wais_b_3_t2, :base_wais_b_4_t1, :base_wais_b_4_t2, :base_wais_b_5_t1, :base_wais_b_5_t2, :base_wais_b_6_t1, :base_wais_b_6_t2, :base_wais_b_7_t1, :base_wais_b_7_t2, :base_rbans_re_1, :base_rbans_re_2, :base_rbans_re_3, :base_rbans_re_4, :base_rbans_re_5, :base_rbans_re_6, :base_rbans_re_7, :base_rbans_re_8, :base_rbans_re_9, :base_rbans_re_10, :base_cq_1a, :base_cq_1b, :base_cq_1b_side, :base_cq_1c, :base_cq_1d, :base_cq_1d_joint, :base_cq_1e, :base_cq_1f, :base_cq_1g, :base_cq_2, :base_cq_2a, :base_cq_3a, :base_cq_3b, :base_cq_3c, :base_cq_3d, :base_cq_4, :base_cq_5, :base_cq_6, :base_cq_7, :base_cq_8, :base_cq_10_a1, :base_cq_10_a2, :base_cq_10_a3, :base_cq_10_a4, :base_cq_10_a5, :base_cq_10_a6, :base_cq_10_a7, :base_cq_10_b, :base_cq_10_c, :base_cq_10_c_level, :base_cq_10_c_type, :base_cpg_1, :base_cpg_2, :base_cpg_3, :base_cpg_4, :base_cpg_5, :base_cpg_6, :base_cpg_7, :base_mspss_1, :base_mspss_2, :base_mspss_3, :base_mspss_4, :base_mspss_5, :base_mspss_6, :base_mspss_7, :base_mspss_8, :base_mspss_9, :base_mspss_10, :base_mspss_11, :base_mspss_12, :base_audit_1, :base_audit_2, :base_audit_3
   #Treatment Completion (tc) variables
   attr_accessible :tc_smfa_1, :tc_smfa_2, :tc_smfa_3, :tc_smfa_4, :tc_smfa_5, :tc_smfa_6, :tc_smfa_7, :tc_smfa_8, :tc_smfa_9, :tc_smfa_10,   :tc_smfa_11,   :tc_smfa_12,   :tc_smfa_13,   :tc_smfa_14,   :tc_smfa_15,   :tc_smfa_16,   :tc_smfa_17,   :tc_smfa_18,   :tc_smfa_19,   :tc_smfa_20,   :tc_smfa_21,   :tc_smfa_22,   :tc_smfa_23,   :tc_smfa_24,   :tc_smfa_25,   :tc_smfa_26,   :tc_smfa_27,   :tc_smfa_28,   :tc_smfa_29,   :tc_smfa_30,   :tc_smfa_31,   :tc_smfa_32,   :tc_smfa_33,   :tc_smfa_34,   :tc_smfa_35,   :tc_smfa_36,   :tc_smfa_37,   :tc_smfa_38,   :tc_smfa_39,   :tc_smfa_40,   :tc_smfa_41,   :tc_smfa_42,   :tc_smfa_43,   :tc_smfa_44,   :tc_smfa_45,   :tc_smfa_46
   attr_accessible :tc_phq_1, :tc_phq_2,  :tc_phq_3,  :tc_phq_4,  :tc_phq_5,  :tc_phq_6,  :tc_phq_7,  :tc_phq_8,  :tc_phq_9,  :tc_phq_10, :tc_whoqol_1,  :tc_whoqol_2,  :tc_panas_1,   :tc_panas_2,   :tc_panas_3,   :tc_panas_4,   :tc_panas_5,   :tc_panas_6,   :tc_panas_7,   :tc_panas_8,   :tc_panas_9,   :tc_panas_10,  :tc_panas_11,  :tc_panas_12,  :tc_panas_13,  :tc_panas_14,  :tc_panas_15,  :tc_panas_16,  :tc_panas_17,  :tc_panas_18,  :tc_panas_19,  :tc_panas_20,  :tc_mses_1, :tc_mses_2, :tc_mses_3, :tc_mses_4, :tc_mses_5, :tc_mses_6, :tc_mses_7, :tc_mses_8, :tc_mses_9, :tc_pam_1,  :tc_pam_2,  :tc_pam_3,  :tc_pam_4,  :tc_pam_5,  :tc_pam_6,  :tc_pam_7,  :tc_pam_8,  :tc_pam_9,  :tc_pam_10, :tc_pam_11, :tc_pam_12, :tc_pam_13, :tc_spsi_1, :tc_spsi_2, :tc_spsi_3, :tc_spsi_4, :tc_spsi_5, :tc_spsi_6, :tc_spsi_7, :tc_spsi_8, :tc_spsi_9, :tc_spsi_10,   :tc_spsi_11,   :tc_spsi_12,   :tc_spsi_13,   :tc_spsi_14,   :tc_spsi_15,   :tc_spsi_16,   :tc_spsi_17,   :tc_spsi_18,   :tc_spsi_19,   :tc_spsi_20,   :tc_spsi_21,   :tc_spsi_22,   :tc_spsi_23,   :tc_spsi_24,   :tc_spsi_25,   :tc_soc_1,  :tc_soc_2,  :tc_soc_3,  :tc_soc_4,  :tc_soc_5,  :tc_soc_6,  :tc_pu_1,   :tc_pu_2,   :tc_pu_3,   :tc_pu_4,   :tc_cpg_1,  :tc_cpg_2,  :tc_cpg_3,  :tc_cpg_4,  :tc_cpg_5,  :tc_cpg_6,  :tc_cpg_7,  :tc_comp_1, :tc_comp_2, :tc_comp_3, :tc_comp_4, :tc_comp_5_a1, :tc_comp_5_a2, :tc_comp_5_a3, :tc_comp_5_a4, :tc_comp_5_a5, :tc_comp_5_a6, :tc_comp_5_a7, :tc_comp_5b,   :tc_comp_5c,   :tc_comp_5c_level,   :tc_comp_5c_type, :tc_mspss_1,   :tc_mspss_2,   :tc_mspss_3,   :tc_mspss_4,   :tc_mspss_5,   :tc_mspss_6,   :tc_mspss_7,   :tc_mspss_8,   :tc_mspss_9,   :tc_mspss_10,  :tc_mspss_11,  :tc_mspss_12,  :tc_audit_1,   :tc_audit_2,   :tc_audit_3,   :tc_ptcs_1, :tc_ptcs_2, :tc_ptcs_3, :tc_ptcs_4, :tc_ptcs_5, :tc_ptcs_6, :tc_ptcs_7, :tc_ptcs_8, :tc_ptcs_9, :tc_ptcs_10,   :tc_ptcs_11,   :tc_ptcs_12,   :tc_ptcs_13,   :tc_ptcs_14,   :tc_ptcs_15,   :tc_ptcs_16,   :tc_ptcs_17,   :tc_ar_1,   :tc_ar_2,   :tc_ar_3,   :tc_ar_4,   :tc_ar_5,   :tc_ar_6,   :tc_ar_7,   :tc_ar_8,   :tc_ar_9,   :tc_ar_9o,  :tc_sat_1,  :tc_sat_2,  :tc_sat_3,  :tc_sat_4,  :tc_sat_5,  :tc_sat_6,  :tc_sat_7,  :tc_sat_8,  :tc_sat_9,  :tc_sat_10, :tc_sat_11



   attr_writer :current_step

   def current_step
   	@current_step || steps.first
   end

   def steps
   	%w[sfmfa phq whoqol_bref positive_negative mses_self pam spsir change_questionnaire prosthesis cognitive comorbidity pain mspss audit ]
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

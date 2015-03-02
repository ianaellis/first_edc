class Baseline < ActiveRecord::Base
   include ActiveModel::Conversion
   extend  ActiveModel::Naming
   	
   belongs_to :subject
   attr_accessible :subject_id
   attr_accessible :base_smfa_1, :base_smfa_2, :base_smfa_3, :base_smfa_4, :base_smfa_5, :base_smfa_6, :base_smfa_7, :base_smfa_8, :base_smfa_9, :base_smfa_10, :base_smfa_11, :base_smfa_12, :base_smfa_13, :base_smfa_14, :base_smfa_15, :base_smfa_16, :base_smfa_17, :base_smfa_18, :base_smfa_19, :base_smfa_20, :base_smfa_21, :base_smfa_22, :base_smfa_23, :base_smfa_24, :base_smfa_25, :base_smfa_26, :base_smfa_27, :base_smfa_28, :base_smfa_29, :base_smfa_30, :base_smfa_31, :base_smfa_32, :base_smfa_33, :base_smfa_34, :base_smfa_35, :base_smfa_36, :base_smfa_37, :base_smfa_38, :base_smfa_39, :base_smfa_40, :base_smfa_41, :base_smfa_42, :base_smfa_43, :base_smfa_44, :base_smfa_45, :base_smfa_46, :base_phq_1, :base_phq_2, :base_phq_3, :base_phq_4, :base_phq_5, :base_phq_6, :base_phq_7, :base_phq_8, :base_phq_9, :base_phq_10, :base_whoqol_1, :base_whoqol_2, :panas_present_moment_or_last_week, :base_panas_1, :base_panas_2, :base_panas_3, :base_panas_4, :base_panas_5, :base_panas_6, :base_panas_7, :base_panas_8, :base_panas_9, :base_panas_10, :base_panas_11, :base_panas_12, :base_panas_13, :base_panas_14, :base_panas_15, :base_panas_16, :base_panas_17, :base_panas_18, :base_panas_19, :base_panas_20, :base_mses_1, :base_mses_2, :base_mses_3, :base_mses_4, :base_mses_5, :base_mses_6, :base_mses_7, :base_mses_8, :base_mses_9, :base_pam_1, :base_pam_2, :base_pam_3, :base_pam_4, :base_pam_5, :base_pam_6, :base_pam_7, :base_pam_8, :base_pam_9, :base_pam_10, :base_pam_11, :base_pam_12, :base_pam_13, :base_spsi_1, :base_spsi_2, :base_spsi_3, :base_spsi_4, :base_spsi_5, :base_spsi_6, :base_spsi_7, :base_spsi_8, :base_spsi_9, :base_spsi_10, :base_spsi_11, :base_spsi_12, :base_spsi_13, :base_spsi_14, :base_spsi_15, :base_spsi_16, :base_spsi_17, :base_spsi_18, :base_spsi_19, :base_spsi_20, :base_spsi_21, :base_spsi_22, :base_spsi_23, :base_spsi_24, :base_spsi_25, :base_soc_1, :base_soc_2, :base_soc_3, :base_soc_4, :base_soc_5, :base_soc_6, :base_pu_1, :base_pu_2, :base_pu_3, :base_pu_4, :base_rbans_t1_1, :base_rbans_t2_1, :base_rbans_t3_1, :base_rbans_t4_1, :base_rbans_t1_2, :base_rbans_t2_2, :base_rbans_t3_2, :base_rbans_t4_2, :base_rbans_t1_3, :base_rbans_t2_3, :base_rbans_t3_3, :base_rbans_t4_3, :base_rbans_t1_4, :base_rbans_t2_4, :base_rbans_t3_4, :base_rbans_t4_4, :base_rbans_t1_5, :base_rbans_t2_5, :base_rbans_t3_5, :base_rbans_t4_5, :base_rbans_t1_6, :base_rbans_t2_6, :base_rbans_t3_6, :base_rbans_t4_6, :base_rbans_t1_7, :base_rbans_t2_7, :base_rbans_t3_7, :base_rbans_t4_7, :base_rbans_t1_8, :base_rbans_t2_8, :base_rbans_t3_8, :base_rbans_t4_8, :base_rbans_t1_9, :base_rbans_t2_9, :base_rbans_t3_9, :base_rbans_t4_9, :base_rbans_t1_10, :base_rbans_t2_10, :base_rbans_t3_10, :base_rbans_t4_10, :base_wais_a_1_t1, :base_wais_a_1_t2, :base_wais_a_2_t1, :base_wais_a_2_t2, :base_wais_a_3_t1, :base_wais_a_3_t2, :base_wais_a_4_t1, :base_wais_a_4_t2, :base_wais_a_5_t1, :base_wais_a_5_t2, :base_wais_a_6_t1, :base_wais_a_6_t2, :base_wais_a_7_t1, :base_wais_a_7_t2, :base_wais_a_8_t1, :base_wais_a_8_t2, :base_wais_b_1_t1, :base_wais_b_1_t2, :base_wais_b_2_t1, :base_wais_b_2_t2, :base_wais_b_3_t1, :base_wais_b_3_t2, :base_wais_b_4_t1, :base_wais_b_4_t2, :base_wais_b_5_t1, :base_wais_b_5_t2, :base_wais_b_6_t1, :base_wais_b_6_t2, :base_wais_b_7_t1, :base_wais_b_7_t2, :base_rbans_re_1, :base_rbans_re_2, :base_rbans_re_3, :base_rbans_re_4, :base_rbans_re_5, :base_rbans_re_6, :base_rbans_re_7, :base_rbans_re_8, :base_rbans_re_9, :base_rbans_re_10, :base_cq_1a, :base_cq_1b, :base_cq_1b_side, :base_cq_1c, :base_cq_1d, :base_cq_1d_joint, :base_cq_1e, :base_cq_1f, :base_cq_1g, :base_cq_2, :base_cq_2a, :base_cq_3a, :base_cq_3b, :base_cq_3c, :base_cq_3d, :base_cq_4, :base_cq_5, :base_cq_6, :base_cq_7, :base_cq_8, :base_cq_9, :base_cq_10_a1, :base_cq_10_a2, :base_cq_10_a3, :base_cq_10_a4, :base_cq_10_a5, :base_cq_10_a6, :base_cq_10_a7, :base_cq_10_b, :base_cq_10_c, :base_cq_10_c_level, :base_cq_10_c_type, :base_cpg_1, :base_cpg_2, :base_cpg_3, :base_cpg_4, :base_cpg_5, :base_cpg_6, :base_cpg_7, :base_mspss_1, :base_mspss_2, :base_mspss_3, :base_mspss_4, :base_mspss_5, :base_mspss_6, :base_mspss_7, :base_mspss_8, :base_mspss_9, :base_mspss_10, :base_mspss_11, :base_mspss_12, :base_audit_1, :base_audit_2, :base_audit_3
   attr_accessible :base_cowat_s, :base_cowat_f, :base_cowat_a, :base_cowat_s_1, :base_cowat_s_2, :base_cowat_s_3, :base_cowat_s_4, :base_cowat_s_5, :base_cowat_s_6, :base_cowat_s_7, :base_cowat_s_8, :base_cowat_s_9, :base_cowat_s_10, :base_cowat_s_11, :base_cowat_s_12, :base_cowat_s_13, :base_cowat_s_14, :base_cowat_s_15, :base_cowat_s_16, :base_cowat_s_17, :base_cowat_s_18, :base_cowat_s_19, :base_cowat_s_20, :base_cowat_s_21, :base_cowat_s_22, :base_cowat_s_23, :base_cowat_s_24, :base_cowat_s_25, :base_cowat_a_1, :base_cowat_a_2, :base_cowat_a_3, :base_cowat_a_4, :base_cowat_a_5, :base_cowat_a_6, :base_cowat_a_7, :base_cowat_a_8, :base_cowat_a_9, :base_cowat_a_10, :base_cowat_a_11, :base_cowat_a_12, :base_cowat_a_13, :base_cowat_a_14, :base_cowat_a_15, :base_cowat_a_16, :base_cowat_a_17, :base_cowat_a_18, :base_cowat_a_19, :base_cowat_a_20, :base_cowat_a_21, :base_cowat_a_22, :base_cowat_a_23, :base_cowat_a_24, :base_cowat_a_25, :base_cowat_f_1, :base_cowat_f_2, :base_cowat_f_3, :base_cowat_f_4, :base_cowat_f_5, :base_cowat_f_6, :base_cowat_f_7, :base_cowat_f_8, :base_cowat_f_9, :base_cowat_f_10, :base_cowat_f_11, :base_cowat_f_12, :base_cowat_f_13, :base_cowat_f_14, :base_cowat_f_15, :base_cowat_f_16, :base_cowat_f_17, :base_cowat_f_18, :base_cowat_f_19, :base_cowat_f_20, :base_cowat_f_21, :base_cowat_f_22, :base_cowat_f_23, :base_cowat_f_24, :base_cowat_f_25
   attr_accessible :base_weight, :base_height, :base_employment_status_a, :base_employment_status_b, :base_living_status, :base_living_status_other, :base_socioeconomic_status, :base_education_a, :base_education_b
   attr_accessible :base_arthritis, :base_arthritis_present, :base_osteoporosis, :base_osteoporosis_present, :base_asthma, :base_asthma_present, :base_copd, :base_copd_present, :base_angina, :base_angina_present, :base_heart, :base_heart_present, :base_heart_attack, :base_heart_attack_present, :base_neuro, :base_neuro_present, :base_stroke, :base_stroke_present, :base_pvd, :base_pvd_present, :base_diabetes, :base_diabetes_present, :base_gastrointestinal, :base_gastrointestinal_present, :base_depression, :base_depression_present, :base_anxiety, :base_anxiety_present, :base_visual_impairment, :base_visual_impairment_present, :base_hearing_impairment, :base_hearing_impairment_present, :base_ddd, :base_ddd_present, :base_obese, :base_obese_present
   attr_accessible :refuse_rbans_list, :refuse_rbans_list_recall, :refuse_cwat, :refuse_wais_1, :refuse_wais_2, :cowat_total_f, :cowat_total_s, :cowat_total_a
   attr_accessible :baseline_cognitive_notes, :administration_method, :baseline_amp_side, :baseline_smoking_1, :baseline_smoking_2, :baseline_smoking_3, :base_pu_2_bilateral_left, :base_pu_3_bilateral_left

   attr_writer :current_step

   def current_step
   	@current_step || steps.first
   end

   def steps
   	%w[general_demo fci comorbidity sfmfa phq whoqol_bref positive_negative mses_self pam spsir change_questionnaire prosthesis pain mspss audit stop cognitive]
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

   def empty_subject(subject_id)
      where(subject_id: :subject_id).first != nil 
   end

   # validates :base_height, numericality: {:less_than_or_equal_to => 85, message: "Height must be below 85 inches."}, presence: {message: "Height cannot be blank"}
end

class Subject < ActiveRecord::Base
   include ActiveModel::Conversion
   extend ActiveModel::Naming
   has_one :baseline
   has_one :treatment_completion

   #Screening Variables
   attr_accessible :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10
   attr_accessible :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5
   #Treatment Completion (tc) variables
   attr_accessible :tc_smfa_1, :tc_smfa_2, :tc_smfa_3, :tc_smfa_4, :tc_smfa_5, :tc_smfa_6, :tc_smfa_7, :tc_smfa_8, :tc_smfa_9, :tc_smfa_10,   :tc_smfa_11,   :tc_smfa_12,   :tc_smfa_13,   :tc_smfa_14,   :tc_smfa_15,   :tc_smfa_16,   :tc_smfa_17,   :tc_smfa_18,   :tc_smfa_19,   :tc_smfa_20,   :tc_smfa_21,   :tc_smfa_22,   :tc_smfa_23,   :tc_smfa_24,   :tc_smfa_25,   :tc_smfa_26,   :tc_smfa_27,   :tc_smfa_28,   :tc_smfa_29,   :tc_smfa_30,   :tc_smfa_31,   :tc_smfa_32,   :tc_smfa_33,   :tc_smfa_34,   :tc_smfa_35,   :tc_smfa_36,   :tc_smfa_37,   :tc_smfa_38,   :tc_smfa_39,   :tc_smfa_40,   :tc_smfa_41,   :tc_smfa_42,   :tc_smfa_43,   :tc_smfa_44,   :tc_smfa_45,   :tc_smfa_46
   attr_accessible :tc_phq_1, :tc_phq_2,  :tc_phq_3,  :tc_phq_4,  :tc_phq_5,  :tc_phq_6,  :tc_phq_7,  :tc_phq_8,  :tc_phq_9,  :tc_phq_10, :tc_whoqol_1,  :tc_whoqol_2,  :tc_panas_1,   :tc_panas_2,   :tc_panas_3,   :tc_panas_4,   :tc_panas_5,   :tc_panas_6,   :tc_panas_7,   :tc_panas_8,   :tc_panas_9,   :tc_panas_10,  :tc_panas_11,  :tc_panas_12,  :tc_panas_13,  :tc_panas_14,  :tc_panas_15,  :tc_panas_16,  :tc_panas_17,  :tc_panas_18,  :tc_panas_19,  :tc_panas_20,  :tc_mses_1, :tc_mses_2, :tc_mses_3, :tc_mses_4, :tc_mses_5, :tc_mses_6, :tc_mses_7, :tc_mses_8, :tc_mses_9, :tc_pam_1,  :tc_pam_2,  :tc_pam_3,  :tc_pam_4,  :tc_pam_5,  :tc_pam_6,  :tc_pam_7,  :tc_pam_8,  :tc_pam_9,  :tc_pam_10, :tc_pam_11, :tc_pam_12, :tc_pam_13, :tc_spsi_1, :tc_spsi_2, :tc_spsi_3, :tc_spsi_4, :tc_spsi_5, :tc_spsi_6, :tc_spsi_7, :tc_spsi_8, :tc_spsi_9, :tc_spsi_10,   :tc_spsi_11,   :tc_spsi_12,   :tc_spsi_13,   :tc_spsi_14,   :tc_spsi_15,   :tc_spsi_16,   :tc_spsi_17,   :tc_spsi_18,   :tc_spsi_19,   :tc_spsi_20,   :tc_spsi_21,   :tc_spsi_22,   :tc_spsi_23,   :tc_spsi_24,   :tc_spsi_25,   :tc_soc_1,  :tc_soc_2,  :tc_soc_3,  :tc_soc_4,  :tc_soc_5,  :tc_soc_6,  :tc_pu_1,   :tc_pu_2,   :tc_pu_3,   :tc_pu_4,   :tc_cpg_1,  :tc_cpg_2,  :tc_cpg_3,  :tc_cpg_4,  :tc_cpg_5,  :tc_cpg_6,  :tc_cpg_7,  :tc_comp_1, :tc_comp_2, :tc_comp_3, :tc_comp_4, :tc_comp_5_a1, :tc_comp_5_a2, :tc_comp_5_a3, :tc_comp_5_a4, :tc_comp_5_a5, :tc_comp_5_a6, :tc_comp_5_a7, :tc_comp_5b,   :tc_comp_5c,   :tc_comp_5c_level,   :tc_comp_5c_type, :tc_mspss_1,   :tc_mspss_2,   :tc_mspss_3,   :tc_mspss_4,   :tc_mspss_5,   :tc_mspss_6,   :tc_mspss_7,   :tc_mspss_8,   :tc_mspss_9,   :tc_mspss_10,  :tc_mspss_11,  :tc_mspss_12,  :tc_audit_1,   :tc_audit_2,   :tc_audit_3,   :tc_ptcs_1, :tc_ptcs_2, :tc_ptcs_3, :tc_ptcs_4, :tc_ptcs_5, :tc_ptcs_6, :tc_ptcs_7, :tc_ptcs_8, :tc_ptcs_9, :tc_ptcs_10,   :tc_ptcs_11,   :tc_ptcs_12,   :tc_ptcs_13,   :tc_ptcs_14,   :tc_ptcs_15,   :tc_ptcs_16,   :tc_ptcs_17,   :tc_ar_1,   :tc_ar_2,   :tc_ar_3,   :tc_ar_4,   :tc_ar_5,   :tc_ar_6,   :tc_ar_7,   :tc_ar_8,   :tc_ar_9,   :tc_ar_9o,  :tc_sat_1,  :tc_sat_2,  :tc_sat_3,  :tc_sat_4,  :tc_sat_5,  :tc_sat_6,  :tc_sat_7,  :tc_sat_8,  :tc_sat_9,  :tc_sat_10, :tc_sat_11
   #6 Month Follow-Up variables
   attr_accessible :fu6month_smfa_1,   :fu6month_smfa_2, :fu6month_smfa_3, :fu6month_smfa_4, :fu6month_smfa_5, :fu6month_smfa_6, :fu6month_smfa_7, :fu6month_smfa_8, :fu6month_smfa_9, :fu6month_smfa_10,   :fu6month_smfa_11,   :fu6month_smfa_12,   :fu6month_smfa_13,   :fu6month_smfa_14,   :fu6month_smfa_15,   :fu6month_smfa_16,   :fu6month_smfa_17,   :fu6month_smfa_18,   :fu6month_smfa_19,   :fu6month_smfa_20,   :fu6month_smfa_21,   :fu6month_smfa_22,   :fu6month_smfa_23,   :fu6month_smfa_24,   :fu6month_smfa_25,   :fu6month_smfa_26,   :fu6month_smfa_27,   :fu6month_smfa_28,   :fu6month_smfa_29,   :fu6month_smfa_30,   :fu6month_smfa_31,   :fu6month_smfa_32,   :fu6month_smfa_33,   :fu6month_smfa_34,   :fu6month_smfa_35,   :fu6month_smfa_36,   :fu6month_smfa_37,   :fu6month_smfa_38,   :fu6month_smfa_39,   :fu6month_smfa_40,   :fu6month_smfa_41,   :fu6month_smfa_42,   :fu6month_smfa_43,   :fu6month_smfa_44,   :fu6month_smfa_45,   :fu6month_smfa_46,   :fu6month_phq_1,  :fu6month_phq_2,  :fu6month_phq_3,  :fu6month_phq_4,  :fu6month_phq_5,  :fu6month_phq_6,  :fu6month_phq_7,  :fu6month_phq_8,  :fu6month_phq_9,  :fu6month_phq_10, :fu6month_whoqol_1,  :fu6month_whoqol_2,  :fu6month_panas_1,   :fu6month_panas_2,   :fu6month_panas_3,   :fu6month_panas_4,   :fu6month_panas_5,   :fu6month_panas_6,   :fu6month_panas_7,   :fu6month_panas_8,   :fu6month_panas_9,   :fu6month_panas_10,  :fu6month_panas_11,  :fu6month_panas_12,  :fu6month_panas_13,  :fu6month_panas_14,  :fu6month_panas_15,  :fu6month_panas_16,  :fu6month_panas_17,  :fu6month_panas_18,  :fu6month_panas_19,  :fu6month_panas_20,  :fu6month_mses_1, :fu6month_mses_2, :fu6month_mses_3, :fu6month_mses_4, :fu6month_mses_5, :fu6month_mses_6, :fu6month_mses_7, :fu6month_mses_8, :fu6month_mses_9, :fu6month_pam_1,  :fu6month_pam_2,  :fu6month_pam_3,  :fu6month_pam_4,  :fu6month_pam_5,  :fu6month_pam_6,  :fu6month_pam_7,  :fu6month_pam_8,  :fu6month_pam_9,  :fu6month_pam_10, :fu6month_pam_11, :fu6month_pam_12, :fu6month_pam_13, :fu6month_spsi_1, :fu6month_spsi_2, :fu6month_spsi_3, :fu6month_spsi_4, :fu6month_spsi_5, :fu6month_spsi_6, :fu6month_spsi_7, :fu6month_spsi_8, :fu6month_spsi_9, :fu6month_spsi_10,   :fu6month_spsi_11,   :fu6month_spsi_12,   :fu6month_spsi_13,   :fu6month_spsi_14,   :fu6month_spsi_15,   :fu6month_spsi_16,   :fu6month_spsi_17,   :fu6month_spsi_18,   :fu6month_spsi_19,   :fu6month_spsi_20,   :fu6month_spsi_21,   :fu6month_spsi_22,   :fu6month_spsi_23,   :fu6month_spsi_24,   :fu6month_spsi_25,   :fu6month_soc_1,  :fu6month_soc_2,  :fu6month_soc_3,  :fu6month_soc_4,  :fu6month_soc_5,  :fu6month_soc_6,  :fu6month_pu_1,   :fu6month_pu_2,   :fu6month_pu_3,   :fu6month_pu_4,   :fu6month_cpg_1,  :fu6month_cpg_2,  :fu6month_cpg_3,  :fu6month_cpg_4,  :fu6month_cpg_5,  :fu6month_cpg_6,  :fu6month_cpg_7,  :fu6month_comp_1, :fu6month_comp_2, :fu6month_comp_3, :fu6month_comp_4, :fu6month_comp_5_a1, :fu6month_comp_5_a2, :fu6month_comp_5_a3, :fu6month_comp_5_a4, :fu6month_comp_5_a5, :fu6month_comp_5_a6, :fu6month_comp_5_a7, :fu6month_comp_5b,   :fu6month_comp_5c,   :fu6month_comp_5c_level,   :fu6month_comp_5c_type, :fu6month_mspss_1,   :fu6month_mspss_2,   :fu6month_mspss_3,   :fu6month_mspss_4,   :fu6month_mspss_5,   :fu6month_mspss_6,   :fu6month_mspss_7,   :fu6month_mspss_8,   :fu6month_mspss_9,   :fu6month_mspss_10,  :fu6month_mspss_11,  :fu6month_mspss_12,  :fu6month_audit_1,   :fu6month_audit_2,   :fu6month_audit_3
   #Other Follow-Up Variables
   attr_accessible :fu3week_fuq_1,  :fu3week_fuq_2,   :fu3week_fuq_2a,  :fu3week_fuq_3,   :fu3week_fuq_3a,  :fu3week_fuq_4,   :fu3week_fuq_4a_level,  :fu3week_fuq_4a_type,   :fu3week_fuq_4b,  :fu3week_fuq_5,   :fu3week_fuq_5a,  :fu3week_fuq_6,   :fu3week_fuq_6a,  :fu3week_fuq_7,   :fu6week_fuq_1,   :fu6week_fuq_2,   :fu6week_fuq_2a,  :fu6week_fuq_3,   :fu6week_fuq_3a,  :fu6week_fuq_4,   :fu6week_fuq_4a_level,  :fu6week_fuq_4a_type,   :fu6week_fuq_4b,  :fu6week_fuq_5,   :fu6week_fuq_5a,  :fu6week_fuq_6,   :fu6week_fuq_6a,  :fu6week_fuq_7,   :fu18week_fuq_1,  :fu18week_fuq_2,  :fu18week_fuq_2a, :fu18week_fuq_3,  :fu18week_fuq_3a, :fu18week_fuq_4,  :fu18week_fuq_4a_level, :fu18week_fuq_4a_type,  :fu18week_fuq_4b, :fu18week_fuq_5,  :fu18week_fuq_5a, :fu18week_fuq_6,  :fu18week_fuq_6a, :fu18week_fuq_7,  :fu1year_fuq_1,   :fu1year_fuq_2,   :fu1year_fuq_2a,  :fu1year_fuq_3,   :fu1year_fuq_3a,  :fu1year_fuq_4,   :fu1year_fuq_4a_level,  :fu1year_fuq_4a_type,   :fu1year_fuq_4b,  :fu1year_fuq_5,   :fu1year_fuq_5a,  :fu1year_fuq_6,   :fu1year_fuq_6a,  :fu1year_fuq_7

   #Variables for Randomization
   attr_accessible :group_size_input, :site_input, :group_name

   #Validations for Randomization
   # validates_presence_of :group_size_input, :site_input, :group_name, :presence => true, :on => :update
   # validates_numericality_of :group_size_input, :site_input
   # validates :group_size_input, inclusion: { in: 6..10,
   #    message: "Please enter a group size between 6 and 10"
   # }


   attr_writer :current_step
   attr_writer :page_title

   # VALIDATIONS
   # Screening Validations
   

   def current_step
   	@current_step || steps.first
   end

   def page_title(the_title)
      @page_title = the_title
   end

   def steps
      if page_title == 'Baseline'
   	   %w[sfmfa phq whoqol_bref positive_negative mses_self pam spsir change_questionnaire prosthesis cognitive comorbidity pain mspss audit ]
      elsif page_title == 'Treatment Completion'
         %w[smfa phq whoqol_bref positive_negative pam spsir ssscq prosthesis pain complications mspss audit ptcs accessing_resources satisfaction ]
      elsif page_title == '6 Month' 
         %w[smfa phq whoqol_bref positive_negative mses_self pam spsir ssscq prosthesis pain complications mspss audit ]
      else
        %[#{self.page_title}]
      end
     
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

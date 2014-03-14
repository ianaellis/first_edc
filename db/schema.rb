# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140314180403) do

  create_table "baselines", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "baseline"
    t.integer  "base_smfa_1"
    t.integer  "integer"
    t.integer  "base_smfa_2"
    t.integer  "base_smfa_3"
    t.integer  "base_smfa_4"
    t.integer  "base_smfa_5"
    t.integer  "base_smfa_6"
    t.integer  "base_smfa_7"
    t.integer  "base_smfa_8"
    t.integer  "base_smfa_9"
    t.integer  "base_smfa_10"
    t.integer  "base_smfa_11"
    t.integer  "base_smfa_12"
    t.integer  "base_smfa_13"
    t.integer  "base_smfa_14"
    t.integer  "base_smfa_15"
    t.integer  "base_smfa_16"
    t.integer  "base_smfa_17"
    t.integer  "base_smfa_18"
    t.integer  "base_smfa_19"
    t.integer  "base_smfa_20"
    t.integer  "base_smfa_21"
    t.integer  "base_smfa_22"
    t.integer  "base_smfa_23"
    t.integer  "base_smfa_24"
    t.integer  "base_smfa_25"
    t.integer  "base_smfa_26"
    t.integer  "base_smfa_27"
    t.integer  "base_smfa_28"
    t.integer  "base_smfa_29"
    t.integer  "base_smfa_30"
    t.integer  "base_smfa_31"
    t.integer  "base_smfa_32"
    t.integer  "base_smfa_33"
    t.integer  "base_smfa_34"
    t.integer  "base_smfa_35"
    t.integer  "base_smfa_36"
    t.integer  "base_smfa_37"
    t.integer  "base_smfa_38"
    t.integer  "base_smfa_39"
    t.integer  "base_smfa_40"
    t.integer  "base_smfa_41"
    t.integer  "base_smfa_42"
    t.integer  "base_smfa_43"
    t.integer  "base_smfa_44"
    t.integer  "base_smfa_45"
    t.integer  "base_smfa_46"
    t.integer  "base_phq_1"
    t.integer  "base_phq_2"
    t.integer  "base_phq_3"
    t.integer  "base_phq_4"
    t.integer  "base_phq_5"
    t.integer  "base_phq_6"
    t.integer  "base_phq_7"
    t.integer  "base_phq_8"
    t.integer  "base_phq_9"
    t.integer  "base_phq_10"
    t.integer  "base_whoqol_1"
    t.integer  "base_whoqol_2"
    t.integer  "base_panas_1"
    t.integer  "base_panas_2"
    t.integer  "base_panas_3"
    t.integer  "base_panas_4"
    t.integer  "base_panas_5"
    t.integer  "base_panas_6"
    t.integer  "base_panas_7"
    t.integer  "base_panas_8"
    t.integer  "base_panas_9"
    t.integer  "base_panas_10"
    t.integer  "base_panas_11"
    t.integer  "base_panas_12"
    t.integer  "base_panas_13"
    t.integer  "base_panas_14"
    t.integer  "base_panas_15"
    t.integer  "base_panas_16"
    t.integer  "base_panas_17"
    t.integer  "base_panas_18"
    t.integer  "base_panas_19"
    t.integer  "base_panas_20"
    t.integer  "base_mses_1"
    t.integer  "base_mses_2"
    t.integer  "base_mses_3"
    t.integer  "base_mses_4"
    t.integer  "base_mses_5"
    t.integer  "base_mses_6"
    t.integer  "base_mses_7"
    t.integer  "base_mses_8"
    t.integer  "base_mses_9"
    t.integer  "base_pam_1"
    t.integer  "base_pam_2"
    t.integer  "base_pam_3"
    t.integer  "base_pam_4"
    t.integer  "base_pam_5"
    t.integer  "base_pam_6"
    t.integer  "base_pam_7"
    t.integer  "base_pam_8"
    t.integer  "base_pam_9"
    t.integer  "base_pam_10"
    t.integer  "base_pam_11"
    t.integer  "base_pam_12"
    t.integer  "base_pam_13"
    t.integer  "base_spsi_1"
    t.integer  "base_spsi_2"
    t.integer  "base_spsi_3"
    t.integer  "base_spsi_4"
    t.integer  "base_spsi_5"
    t.integer  "base_spsi_6"
    t.integer  "base_spsi_7"
    t.integer  "base_spsi_8"
    t.integer  "base_spsi_9"
    t.integer  "base_spsi_10"
    t.integer  "base_spsi_11"
    t.integer  "base_spsi_12"
    t.integer  "base_spsi_13"
    t.integer  "base_spsi_14"
    t.integer  "base_spsi_15"
    t.integer  "base_spsi_16"
    t.integer  "base_spsi_17"
    t.integer  "base_spsi_18"
    t.integer  "base_spsi_19"
    t.integer  "base_spsi_20"
    t.integer  "base_spsi_21"
    t.integer  "base_spsi_22"
    t.integer  "base_spsi_23"
    t.integer  "base_spsi_24"
    t.integer  "base_spsi_25"
    t.integer  "base_soc_1"
    t.integer  "base_soc_2"
    t.integer  "base_soc_3"
    t.integer  "base_soc_4"
    t.integer  "base_soc_5"
    t.integer  "base_soc_6"
    t.integer  "base_pu_1"
    t.integer  "base_pu_2"
    t.integer  "base_pu_3"
    t.integer  "base_pu_4"
    t.integer  "base_rbans_t1_1"
    t.integer  "base_rbans_t1_2"
    t.integer  "base_rbans_t1_3"
    t.integer  "base_rbans_t1_4"
    t.integer  "base_rbans_t1_5"
    t.integer  "base_rbans_t1_6"
    t.integer  "base_rbans_t1_7"
    t.integer  "base_rbans_t1_8"
    t.integer  "base_rbans_t1_9"
    t.integer  "base_rbans_t1_10"
    t.integer  "base_rbans_t2_1"
    t.integer  "base_rbans_t2_2"
    t.integer  "base_rbans_t2_3"
    t.integer  "base_rbans_t2_4"
    t.integer  "base_rbans_t2_5"
    t.integer  "base_rbans_t2_6"
    t.integer  "base_rbans_t2_7"
    t.integer  "base_rbans_t2_8"
    t.integer  "base_rbans_t2_9"
    t.integer  "base_rbans_t2_10"
    t.integer  "base_rbans_t3_1"
    t.integer  "base_rbans_t3_2"
    t.integer  "base_rbans_t3_3"
    t.integer  "base_rbans_t3_4"
    t.integer  "base_rbans_t3_5"
    t.integer  "base_rbans_t3_6"
    t.integer  "base_rbans_t3_7"
    t.integer  "base_rbans_t3_8"
    t.integer  "base_rbans_t3_9"
    t.integer  "base_rbans_t3_10"
    t.integer  "base_rbans_t4_1"
    t.integer  "base_rbans_t4_2"
    t.integer  "base_rbans_t4_3"
    t.integer  "base_rbans_t4_4"
    t.integer  "base_rbans_t4_5"
    t.integer  "base_rbans_t4_6"
    t.integer  "base_rbans_t4_7"
    t.integer  "base_rbans_t4_8"
    t.integer  "base_rbans_t4_9"
    t.integer  "base_rbans_t4_10"
    t.integer  "base_wais_a_1_t1"
    t.integer  "base_wais_a_1_t2"
    t.integer  "base_wais_a_2_t1"
    t.integer  "base_wais_a_2_t2"
    t.integer  "base_wais_a_3_t1"
    t.integer  "base_wais_a_3_t2"
    t.integer  "base_wais_a_4_t1"
    t.integer  "base_wais_a_4_t2"
    t.integer  "base_wais_a_5_t1"
    t.integer  "base_wais_a_5_t2"
    t.integer  "base_wais_a_6_t1"
    t.integer  "base_wais_a_6_t2"
    t.integer  "base_wais_a_7_t1"
    t.integer  "base_wais_a_7_t2"
    t.integer  "base_wais_a_8_t1"
    t.integer  "base_wais_a_8_t2"
    t.integer  "base_wais_b_1_t1"
    t.integer  "base_wais_b_1_t2"
    t.integer  "base_wais_b_2_t1"
    t.integer  "base_wais_b_2_t2"
    t.integer  "base_wais_b_3_t1"
    t.integer  "base_wais_b_3_t2"
    t.integer  "base_wais_b_4_t1"
    t.integer  "base_wais_b_4_t2"
    t.integer  "base_wais_b_5_t1"
    t.integer  "base_wais_b_5_t2"
    t.integer  "base_wais_b_6_t1"
    t.integer  "base_wais_b_6_t2"
    t.integer  "base_wais_b_7_t1"
    t.integer  "base_wais_b_7_t2"
    t.integer  "base_rbans_re_1"
    t.integer  "base_rbans_re_2"
    t.integer  "base_rbans_re_3"
    t.integer  "base_rbans_re_4"
    t.integer  "base_rbans_re_5"
    t.integer  "base_rbans_re_6"
    t.integer  "base_rbans_re_7"
    t.integer  "base_rbans_re_8"
    t.integer  "base_rbans_re_9"
    t.integer  "base_rbans_re_10"
    t.integer  "base_cq_1a"
    t.integer  "base_cq_1b"
    t.integer  "base_cq_1b_side"
    t.integer  "base_cq_1c"
    t.integer  "base_cq_1d"
    t.integer  "base_cq_1d_joint"
    t.integer  "base_cq_1e"
    t.integer  "base_cq_1f"
    t.integer  "base_cq_1g"
    t.integer  "base_cq_2"
    t.integer  "base_cq_2a"
    t.integer  "base_cq_3a"
    t.integer  "base_cq_3b"
    t.integer  "base_cq_3c"
    t.integer  "base_cq_3d"
    t.integer  "base_cq_4"
    t.integer  "base_cq_5"
    t.integer  "base_cq_6"
    t.integer  "base_cq_7"
    t.integer  "base_cq_8"
    t.integer  "base_cq_9"
    t.integer  "base_cq_10_a1"
    t.integer  "base_cq_10_a2"
    t.integer  "base_cq_10_a3"
    t.integer  "base_cq_10_a4"
    t.integer  "base_cq_10_a5"
    t.integer  "base_cq_10_a6"
    t.integer  "base_cq_10_a7"
    t.integer  "base_cq_10_b"
    t.integer  "base_cq_10_c"
    t.integer  "base_cq_10_c_level"
    t.integer  "base_cq_10_c_type"
    t.integer  "base_cpg_1"
    t.integer  "base_cpg_2"
    t.integer  "base_cpg_3"
    t.integer  "base_cpg_4"
    t.integer  "base_cpg_5"
    t.integer  "base_cpg_6"
    t.integer  "base_cpg_7"
    t.integer  "base_comp1"
    t.integer  "base_comp2"
    t.integer  "base_comp3"
    t.integer  "base_comp4"
    t.integer  "base_comp5_a1"
    t.integer  "base_comp5_a2"
    t.integer  "base_comp5_a3"
    t.integer  "base_comp5_a4"
    t.integer  "base_comp5_a5"
    t.integer  "base_comp5_a6"
    t.integer  "base_comp5_a7"
    t.integer  "base_comp5b"
    t.integer  "base_comp5c"
    t.integer  "base_comp5c_level"
    t.integer  "base_comp5c_type"
    t.integer  "base_mspss_1"
    t.integer  "base_mspss_2"
    t.integer  "base_mspss_3"
    t.integer  "base_mspss_4"
    t.integer  "base_mspss_5"
    t.integer  "base_mspss_6"
    t.integer  "base_mspss_7"
    t.integer  "base_mspss_8"
    t.integer  "base_mspss_9"
    t.integer  "base_mspss_10"
    t.integer  "base_mspss_11"
    t.integer  "base_mspss_12"
    t.integer  "base_audit_1"
    t.integer  "base_audit_2"
    t.integer  "base_audit_3"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "panas_present_moment_or_last_week"
    t.integer  "base_cowat_f"
    t.integer  "base_cowat_a"
    t.integer  "base_cowat_s"
    t.string   "base_cowat_f_1"
    t.string   "base_cowat_f_2"
    t.string   "base_cowat_f_3"
    t.string   "base_cowat_f_4"
    t.string   "base_cowat_f_5"
    t.string   "base_cowat_f_6"
    t.string   "base_cowat_f_7"
    t.string   "base_cowat_f_8"
    t.string   "base_cowat_f_9"
    t.string   "base_cowat_f_10"
    t.string   "base_cowat_f_11"
    t.string   "base_cowat_f_12"
    t.string   "base_cowat_f_13"
    t.string   "base_cowat_f_14"
    t.string   "base_cowat_f_15"
    t.string   "base_cowat_f_16"
    t.string   "base_cowat_f_17"
    t.string   "base_cowat_f_18"
    t.string   "base_cowat_f_19"
    t.string   "base_cowat_f_20"
    t.string   "base_cowat_f_21"
    t.string   "base_cowat_f_22"
    t.string   "base_cowat_f_23"
    t.string   "base_cowat_f_24"
    t.string   "base_cowat_f_25"
    t.string   "base_cowat_a_1"
    t.string   "base_cowat_a_2"
    t.string   "base_cowat_a_3"
    t.string   "base_cowat_a_4"
    t.string   "base_cowat_a_5"
    t.string   "base_cowat_a_6"
    t.string   "base_cowat_a_7"
    t.string   "base_cowat_a_8"
    t.string   "base_cowat_a_9"
    t.string   "base_cowat_a_10"
    t.string   "base_cowat_a_11"
    t.string   "base_cowat_a_12"
    t.string   "base_cowat_a_13"
    t.string   "base_cowat_a_14"
    t.string   "base_cowat_a_15"
    t.string   "base_cowat_a_16"
    t.string   "base_cowat_a_17"
    t.string   "base_cowat_a_18"
    t.string   "base_cowat_a_19"
    t.string   "base_cowat_a_20"
    t.string   "base_cowat_a_21"
    t.string   "base_cowat_a_22"
    t.string   "base_cowat_a_23"
    t.string   "base_cowat_a_24"
    t.string   "base_cowat_a_25"
    t.string   "base_cowat_s_1"
    t.string   "base_cowat_s_2"
    t.string   "base_cowat_s_3"
    t.string   "base_cowat_s_4"
    t.string   "base_cowat_s_5"
    t.string   "base_cowat_s_6"
    t.string   "base_cowat_s_7"
    t.string   "base_cowat_s_8"
    t.string   "base_cowat_s_9"
    t.string   "base_cowat_s_10"
    t.string   "base_cowat_s_11"
    t.string   "base_cowat_s_12"
    t.string   "base_cowat_s_13"
    t.string   "base_cowat_s_14"
    t.string   "base_cowat_s_15"
    t.string   "base_cowat_s_16"
    t.string   "base_cowat_s_17"
    t.string   "base_cowat_s_18"
    t.string   "base_cowat_s_19"
    t.string   "base_cowat_s_20"
    t.string   "base_cowat_s_21"
    t.string   "base_cowat_s_22"
    t.string   "base_cowat_s_23"
    t.string   "base_cowat_s_24"
    t.string   "base_cowat_s_25"
    t.integer  "base_martial_status"
    t.integer  "base_weight"
    t.integer  "base_living_status"
    t.string   "base_living_status_other"
    t.integer  "base_height"
    t.integer  "base_employment_status_a"
    t.integer  "base_employment_status_b"
    t.integer  "base_socioeconomic_status"
    t.integer  "base_education_a"
    t.integer  "base_education_b"
    t.integer  "base_arthritis"
    t.integer  "base_arthritis_present"
    t.integer  "base_osteoporosis"
    t.integer  "base_osteoporosis_present"
    t.integer  "base_asthma"
    t.integer  "base_asthma_present"
    t.integer  "base_copd"
    t.integer  "base_copd_present"
    t.integer  "base_angina"
    t.integer  "base_angina_present"
    t.integer  "base_heart"
    t.integer  "base_heart_present"
    t.integer  "base_heart_attack"
    t.integer  "base_heart_attack_present"
    t.integer  "base_neuro"
    t.integer  "base_neuro_present"
    t.integer  "base_stroke"
    t.integer  "base_stroke_present"
    t.integer  "base_pvd"
    t.integer  "base_pvd_present"
    t.integer  "base_diabetes"
    t.integer  "base_diabetes_present"
    t.integer  "base_gastrointestinal"
    t.integer  "base_gastrointestinal_present"
    t.integer  "base_depression"
    t.integer  "base_depression_present"
    t.integer  "base_anxiety"
    t.integer  "base_anxiety_present"
    t.integer  "base_visual_impairment"
    t.integer  "base_visual_impairment_present"
    t.integer  "base_hearing_impairment"
    t.integer  "base_hearing_impairment_present"
    t.integer  "base_ddd"
    t.integer  "base_ddd_present"
    t.integer  "base_obese"
    t.integer  "base_obese_present"
    t.integer  "base_fci_total"
  end

  add_index "baselines", ["subject_id"], :name => "index_baselines_on_subject_id"

  create_table "crf_table", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "pref_rand"
    t.integer  "treatment_group"
    t.integer  "study_site"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "follow_up18_weeks", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "fu18week_fuq_1"
    t.integer  "fu18week_fuq_2"
    t.integer  "fu18week_fuq_2a"
    t.integer  "fu18week_fuq_3"
    t.integer  "fu18week_fuq_3a"
    t.integer  "fu18week_fuq_4"
    t.integer  "fu18week_fuq_4a_level"
    t.integer  "fu18week_fuq_4a_type"
    t.integer  "fu18week_fuq_4b"
    t.integer  "fu18week_fuq_5"
    t.integer  "fu18week_fuq_5a"
    t.integer  "fu18week_fuq_6"
    t.integer  "fu18week_fuq_6a"
    t.integer  "fu18week_fuq_7"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "follow_up18_weeks", ["subject_id"], :name => "index_follow_up18_weeks_on_subject_id"

  create_table "follow_up1_years", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "fu1year_fuq_1"
    t.integer  "fu1year_fuq_2"
    t.integer  "fu1year_fuq_2a"
    t.integer  "fu1year_fuq_3"
    t.integer  "fu1year_fuq_3a"
    t.integer  "fu1year_fuq_4"
    t.integer  "fu1year_fuq_4a_level"
    t.integer  "fu1year_fuq_4a_type"
    t.integer  "fu1year_fuq_4b"
    t.integer  "fu1year_fuq_5"
    t.integer  "fu1year_fuq_5a"
    t.integer  "fu1year_fuq_6"
    t.integer  "fu1year_fuq_6a"
    t.integer  "fu1year_fuq_7"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "follow_up1_years", ["subject_id"], :name => "index_follow_up1_years_on_subject_id"

  create_table "follow_up3_weeks", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "fu3week_fuq_1"
    t.integer  "fu3week_fuq_2"
    t.integer  "fu3week_fuq_2a"
    t.integer  "fu3week_fuq_3"
    t.integer  "fu3week_fuq_3a"
    t.integer  "fu3week_fuq_4"
    t.integer  "fu3week_fuq_4a_level"
    t.integer  "fu3week_fuq_4a_type"
    t.integer  "fu3week_fuq_4b"
    t.integer  "fu3week_fuq_5"
    t.integer  "fu3week_fuq_5a"
    t.integer  "fu3week_fuq_6"
    t.integer  "fu3week_fuq_6a"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "fu3week_fuq_7"
  end

  add_index "follow_up3_weeks", ["subject_id"], :name => "index_follow_up3_weeks_on_subject_id"

  create_table "follow_up6_months", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "fu6month_smfa_1"
    t.integer  "fu6month_smfa_2"
    t.integer  "fu6month_smfa_3"
    t.integer  "fu6month_smfa_4"
    t.integer  "fu6month_smfa_5"
    t.integer  "fu6month_smfa_6"
    t.integer  "fu6month_smfa_7"
    t.integer  "fu6month_smfa_8"
    t.integer  "fu6month_smfa_9"
    t.integer  "fu6month_smfa_10"
    t.integer  "fu6month_smfa_11"
    t.integer  "fu6month_smfa_12"
    t.integer  "fu6month_smfa_13"
    t.integer  "fu6month_smfa_14"
    t.integer  "fu6month_smfa_15"
    t.integer  "fu6month_smfa_16"
    t.integer  "fu6month_smfa_17"
    t.integer  "fu6month_smfa_18"
    t.integer  "fu6month_smfa_19"
    t.integer  "fu6month_smfa_20"
    t.integer  "fu6month_smfa_21"
    t.integer  "fu6month_smfa_22"
    t.integer  "fu6month_smfa_23"
    t.integer  "fu6month_smfa_24"
    t.integer  "fu6month_smfa_25"
    t.integer  "fu6month_smfa_26"
    t.integer  "fu6month_smfa_27"
    t.integer  "fu6month_smfa_28"
    t.integer  "fu6month_smfa_29"
    t.integer  "fu6month_smfa_30"
    t.integer  "fu6month_smfa_31"
    t.integer  "fu6month_smfa_32"
    t.integer  "fu6month_smfa_33"
    t.integer  "fu6month_smfa_34"
    t.integer  "fu6month_smfa_35"
    t.integer  "fu6month_smfa_36"
    t.integer  "fu6month_smfa_37"
    t.integer  "fu6month_smfa_38"
    t.integer  "fu6month_smfa_39"
    t.integer  "fu6month_smfa_40"
    t.integer  "fu6month_smfa_41"
    t.integer  "fu6month_smfa_42"
    t.integer  "fu6month_smfa_43"
    t.integer  "fu6month_smfa_44"
    t.integer  "fu6month_smfa_45"
    t.integer  "fu6month_smfa_46"
    t.integer  "fu6month_phq_1"
    t.integer  "fu6month_phq_2"
    t.integer  "fu6month_phq_3"
    t.integer  "fu6month_phq_4"
    t.integer  "fu6month_phq_5"
    t.integer  "fu6month_phq_6"
    t.integer  "fu6month_phq_7"
    t.integer  "fu6month_phq_8"
    t.integer  "fu6month_phq_9"
    t.integer  "fu6month_phq_10"
    t.integer  "fu6month_whoqol_1"
    t.integer  "fu6month_whoqol_2"
    t.integer  "fu6month_panas_1"
    t.integer  "fu6month_panas_2"
    t.integer  "fu6month_panas_3"
    t.integer  "fu6month_panas_4"
    t.integer  "fu6month_panas_5"
    t.integer  "fu6month_panas_6"
    t.integer  "fu6month_panas_7"
    t.integer  "fu6month_panas_8"
    t.integer  "fu6month_panas_9"
    t.integer  "fu6month_panas_10"
    t.integer  "fu6month_panas_11"
    t.integer  "fu6month_panas_12"
    t.integer  "fu6month_panas_13"
    t.integer  "fu6month_panas_14"
    t.integer  "fu6month_panas_15"
    t.integer  "fu6month_panas_16"
    t.integer  "fu6month_panas_17"
    t.integer  "fu6month_panas_18"
    t.integer  "fu6month_panas_19"
    t.integer  "fu6month_panas_20"
    t.integer  "fu6month_mses_1"
    t.integer  "fu6month_mses_2"
    t.integer  "fu6month_mses_3"
    t.integer  "fu6month_mses_4"
    t.integer  "fu6month_mses_5"
    t.integer  "fu6month_mses_6"
    t.integer  "fu6month_mses_7"
    t.integer  "fu6month_mses_8"
    t.integer  "fu6month_mses_9"
    t.integer  "fu6month_pam_1"
    t.integer  "fu6month_pam_2"
    t.integer  "fu6month_pam_3"
    t.integer  "fu6month_pam_4"
    t.integer  "fu6month_pam_5"
    t.integer  "fu6month_pam_6"
    t.integer  "fu6month_pam_7"
    t.integer  "fu6month_pam_8"
    t.integer  "fu6month_pam_9"
    t.integer  "fu6month_pam_10"
    t.integer  "fu6month_pam_11"
    t.integer  "fu6month_pam_12"
    t.integer  "fu6month_pam_13"
    t.integer  "fu6month_spsi_1"
    t.integer  "fu6month_spsi_2"
    t.integer  "fu6month_spsi_3"
    t.integer  "fu6month_spsi_4"
    t.integer  "fu6month_spsi_5"
    t.integer  "fu6month_spsi_6"
    t.integer  "fu6month_spsi_7"
    t.integer  "fu6month_spsi_8"
    t.integer  "fu6month_spsi_9"
    t.integer  "fu6month_spsi_10"
    t.integer  "fu6month_spsi_11"
    t.integer  "fu6month_spsi_12"
    t.integer  "fu6month_spsi_13"
    t.integer  "fu6month_spsi_14"
    t.integer  "fu6month_spsi_15"
    t.integer  "fu6month_spsi_16"
    t.integer  "fu6month_spsi_17"
    t.integer  "fu6month_spsi_18"
    t.integer  "fu6month_spsi_19"
    t.integer  "fu6month_spsi_20"
    t.integer  "fu6month_spsi_21"
    t.integer  "fu6month_spsi_22"
    t.integer  "fu6month_spsi_23"
    t.integer  "fu6month_spsi_24"
    t.integer  "fu6month_spsi_25"
    t.integer  "fu6month_soc_1"
    t.integer  "fu6month_soc_2"
    t.integer  "fu6month_soc_3"
    t.integer  "fu6month_soc_4"
    t.integer  "fu6month_soc_5"
    t.integer  "fu6month_soc_6"
    t.integer  "fu6month_pu_1"
    t.integer  "fu6month_pu_2"
    t.integer  "fu6month_pu_3"
    t.integer  "fu6month_pu_4"
    t.integer  "fu6month_cpg_1"
    t.integer  "fu6month_cpg_2"
    t.integer  "fu6month_cpg_3"
    t.integer  "fu6month_cpg_4"
    t.integer  "fu6month_cpg_5"
    t.integer  "fu6month_cpg_6"
    t.integer  "fu6month_cpg_7"
    t.integer  "fu6month_comp_1"
    t.integer  "fu6month_comp_2"
    t.integer  "fu6month_comp_3"
    t.integer  "fu6month_comp_4"
    t.integer  "fu6month_comp_5_a1"
    t.integer  "fu6month_comp_5_a2"
    t.integer  "fu6month_comp_5_a3"
    t.integer  "fu6month_comp_5_a4"
    t.integer  "fu6month_comp_5_a5"
    t.integer  "fu6month_comp_5_a6"
    t.integer  "fu6month_comp_5_a7"
    t.integer  "fu6month_comp_5b"
    t.integer  "fu6month_comp_5c"
    t.integer  "fu6month_comp_5c_level"
    t.integer  "fu6month_comp_5c_type"
    t.integer  "fu6month_mspss_1"
    t.integer  "fu6month_mspss_2"
    t.integer  "fu6month_mspss_3"
    t.integer  "fu6month_mspss_4"
    t.integer  "fu6month_mspss_5"
    t.integer  "fu6month_mspss_6"
    t.integer  "fu6month_mspss_7"
    t.integer  "fu6month_mspss_8"
    t.integer  "fu6month_mspss_9"
    t.integer  "fu6month_mspss_10"
    t.integer  "fu6month_mspss_11"
    t.integer  "fu6month_mspss_12"
    t.integer  "fu6month_audit_1"
    t.integer  "fu6month_audit_2"
    t.integer  "fu6month_audit_3"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "follow_up6_months", ["subject_id"], :name => "index_follow_up6_months_on_subject_id"

  create_table "follow_up6_weeks", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "fu6week_fuq_1"
    t.integer  "fu6week_fuq_2"
    t.integer  "fu6week_fuq_2a"
    t.integer  "fu6week_fuq_3"
    t.integer  "fu6week_fuq_3a"
    t.integer  "fu6week_fuq_4"
    t.integer  "fu6week_fuq_4a_level"
    t.integer  "fu6week_fuq_4a_type"
    t.integer  "fu6week_fuq_4b"
    t.integer  "fu6week_fuq_5"
    t.integer  "fu6week_fuq_5a"
    t.integer  "fu6week_fuq_6"
    t.integer  "fu6week_fuq_6a"
    t.integer  "fu6week_fuq_7"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "follow_up6_weeks", ["subject_id"], :name => "index_follow_up6_weeks_on_subject_id"

  create_table "subject", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "study_site"
    t.integer  "pref_rand"
    t.string   "treatment_group"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "subjects", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "study_site"
    t.integer  "pref_rand"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "sc_inc_1"
    t.integer  "sc_inc_2"
    t.integer  "sc_inc_2a"
    t.integer  "sc_inc_2b"
    t.integer  "sc_inc_3"
    t.integer  "sc_inc_4"
    t.integer  "sc_inc_5"
    t.string   "treatment_group"
    t.integer  "enrolled"
    t.integer  "reason_not_enrolled"
    t.string   "reason_not_enrolled_other"
  end

  create_table "treatment_completions", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "tc_smfa_1"
    t.integer  "tc_smfa_2"
    t.integer  "tc_smfa_3"
    t.integer  "tc_smfa_4"
    t.integer  "tc_smfa_5"
    t.integer  "tc_smfa_6"
    t.integer  "tc_smfa_7"
    t.integer  "tc_smfa_8"
    t.integer  "tc_smfa_9"
    t.integer  "tc_smfa_10"
    t.integer  "tc_smfa_11"
    t.integer  "tc_smfa_12"
    t.integer  "tc_smfa_13"
    t.integer  "tc_smfa_14"
    t.integer  "tc_smfa_15"
    t.integer  "tc_smfa_16"
    t.integer  "tc_smfa_17"
    t.integer  "tc_smfa_18"
    t.integer  "tc_smfa_19"
    t.integer  "tc_smfa_20"
    t.integer  "tc_smfa_21"
    t.integer  "tc_smfa_22"
    t.integer  "tc_smfa_23"
    t.integer  "tc_smfa_24"
    t.integer  "tc_smfa_25"
    t.integer  "tc_smfa_26"
    t.integer  "tc_smfa_27"
    t.integer  "tc_smfa_28"
    t.integer  "tc_smfa_29"
    t.integer  "tc_smfa_30"
    t.integer  "tc_smfa_31"
    t.integer  "tc_smfa_32"
    t.integer  "tc_smfa_33"
    t.integer  "tc_smfa_34"
    t.integer  "tc_smfa_35"
    t.integer  "tc_smfa_36"
    t.integer  "tc_smfa_37"
    t.integer  "tc_smfa_38"
    t.integer  "tc_smfa_39"
    t.integer  "tc_smfa_40"
    t.integer  "tc_smfa_41"
    t.integer  "tc_smfa_42"
    t.integer  "tc_smfa_43"
    t.integer  "tc_smfa_44"
    t.integer  "tc_smfa_45"
    t.integer  "tc_smfa_46"
    t.integer  "tc_phq_1"
    t.integer  "tc_phq_2"
    t.integer  "tc_phq_3"
    t.integer  "tc_phq_4"
    t.integer  "tc_phq_5"
    t.integer  "tc_phq_6"
    t.integer  "tc_phq_7"
    t.integer  "tc_phq_8"
    t.integer  "tc_phq_9"
    t.integer  "tc_phq_10"
    t.integer  "tc_whoqol_1"
    t.integer  "tc_whoqol_2"
    t.integer  "tc_panas_1"
    t.integer  "tc_panas_2"
    t.integer  "tc_panas_3"
    t.integer  "tc_panas_4"
    t.integer  "tc_panas_5"
    t.integer  "tc_panas_6"
    t.integer  "tc_panas_7"
    t.integer  "tc_panas_8"
    t.integer  "tc_panas_9"
    t.integer  "tc_panas_10"
    t.integer  "tc_panas_11"
    t.integer  "tc_panas_12"
    t.integer  "tc_panas_13"
    t.integer  "tc_panas_14"
    t.integer  "tc_panas_15"
    t.integer  "tc_panas_16"
    t.integer  "tc_panas_17"
    t.integer  "tc_panas_18"
    t.integer  "tc_panas_19"
    t.integer  "tc_panas_20"
    t.integer  "tc_mses_1"
    t.integer  "tc_mses_2"
    t.integer  "tc_mses_3"
    t.integer  "tc_mses_4"
    t.integer  "tc_mses_5"
    t.integer  "tc_mses_6"
    t.integer  "tc_mses_7"
    t.integer  "tc_mses_8"
    t.integer  "tc_mses_9"
    t.integer  "tc_pam_1"
    t.integer  "tc_pam_2"
    t.integer  "tc_pam_3"
    t.integer  "tc_pam_4"
    t.integer  "tc_pam_5"
    t.integer  "tc_pam_6"
    t.integer  "tc_pam_7"
    t.integer  "tc_pam_8"
    t.integer  "tc_pam_9"
    t.integer  "tc_pam_10"
    t.integer  "tc_pam_11"
    t.integer  "tc_pam_12"
    t.integer  "tc_pam_13"
    t.integer  "tc_spsi_1"
    t.integer  "tc_spsi_2"
    t.integer  "tc_spsi_3"
    t.integer  "tc_spsi_4"
    t.integer  "tc_spsi_5"
    t.integer  "tc_spsi_6"
    t.integer  "tc_spsi_7"
    t.integer  "tc_spsi_8"
    t.integer  "tc_spsi_9"
    t.integer  "tc_spsi_10"
    t.integer  "tc_spsi_11"
    t.integer  "tc_spsi_12"
    t.integer  "tc_spsi_13"
    t.integer  "tc_spsi_14"
    t.integer  "tc_spsi_15"
    t.integer  "tc_spsi_16"
    t.integer  "tc_spsi_17"
    t.integer  "tc_spsi_18"
    t.integer  "tc_spsi_19"
    t.integer  "tc_spsi_20"
    t.integer  "tc_spsi_21"
    t.integer  "tc_spsi_22"
    t.integer  "tc_spsi_23"
    t.integer  "tc_spsi_24"
    t.integer  "tc_spsi_25"
    t.integer  "tc_soc_1"
    t.integer  "tc_soc_2"
    t.integer  "tc_soc_3"
    t.integer  "tc_soc_4"
    t.integer  "tc_soc_5"
    t.integer  "tc_soc_6"
    t.integer  "tc_pu_1"
    t.integer  "tc_pu_2"
    t.integer  "tc_pu_3"
    t.integer  "tc_pu_4"
    t.integer  "tc_cpg_1"
    t.integer  "tc_cpg_2"
    t.integer  "tc_cpg_3"
    t.integer  "tc_cpg_4"
    t.integer  "tc_cpg_5"
    t.integer  "tc_cpg_6"
    t.integer  "tc_cpg_7"
    t.integer  "tc_comp_1"
    t.integer  "tc_comp_2"
    t.integer  "tc_comp_3"
    t.integer  "tc_comp_4"
    t.integer  "tc_comp_5_a1"
    t.integer  "tc_comp_5_a2"
    t.integer  "tc_comp_5_a3"
    t.integer  "tc_comp_5_a4"
    t.integer  "tc_comp_5_a5"
    t.integer  "tc_comp_5_a6"
    t.integer  "tc_comp_5_a7"
    t.integer  "tc_comp_5b"
    t.integer  "tc_comp_5c"
    t.integer  "tc_comp_5c_level"
    t.integer  "tc_comp_5c_type"
    t.integer  "tc_mspss_1"
    t.integer  "tc_mspss_2"
    t.integer  "tc_mspss_3"
    t.integer  "tc_mspss_4"
    t.integer  "tc_mspss_5"
    t.integer  "tc_mspss_6"
    t.integer  "tc_mspss_7"
    t.integer  "tc_mspss_8"
    t.integer  "tc_mspss_9"
    t.integer  "tc_mspss_10"
    t.integer  "tc_mspss_11"
    t.integer  "tc_mspss_12"
    t.integer  "tc_audit_1"
    t.integer  "tc_audit_2"
    t.integer  "tc_audit_3"
    t.integer  "tc_ptcs_1"
    t.integer  "tc_ptcs_2"
    t.integer  "tc_ptcs_3"
    t.integer  "tc_ptcs_4"
    t.integer  "tc_ptcs_5"
    t.integer  "tc_ptcs_6"
    t.integer  "tc_ptcs_7"
    t.integer  "tc_ptcs_8"
    t.integer  "tc_ptcs_9"
    t.integer  "tc_ptcs_10"
    t.integer  "tc_ptcs_11"
    t.integer  "tc_ptcs_12"
    t.integer  "tc_ptcs_13"
    t.integer  "tc_ptcs_14"
    t.integer  "tc_ptcs_15"
    t.integer  "tc_ptcs_16"
    t.integer  "tc_ptcs_17"
    t.integer  "tc_ar_1"
    t.integer  "tc_ar_2"
    t.integer  "tc_ar_3"
    t.integer  "tc_ar_4"
    t.integer  "tc_ar_5"
    t.integer  "tc_ar_6"
    t.integer  "tc_ar_7"
    t.integer  "tc_ar_8"
    t.integer  "tc_ar_9"
    t.integer  "tc_ar_9o"
    t.integer  "tc_sat_1"
    t.integer  "tc_sat_2"
    t.integer  "tc_sat_3"
    t.integer  "tc_sat_4"
    t.integer  "tc_sat_5"
    t.integer  "tc_sat_6"
    t.integer  "tc_sat_7"
    t.integer  "tc_sat_8"
    t.integer  "tc_sat_9"
    t.integer  "tc_sat_10"
    t.integer  "tc_sat_11"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "treatment_completions", ["subject_id"], :name => "index_treatment_completions_on_subject_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

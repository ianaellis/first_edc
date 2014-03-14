class AddFciVariablesToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :base_arthritis, :integer
  	add_column :baselines, :base_arthritis_present, :integer
  	add_column :baselines, :base_osteoporosis , :integer
  	add_column :baselines, :base_osteoporosis_present, :integer
  	add_column :baselines, :base_asthma, :integer
  	add_column :baselines, :base_asthma_present, :integer
  	add_column :baselines, :base_copd, :integer
  	add_column :baselines, :base_copd_present, :integer
  	add_column :baselines, :base_angina, :integer
  	add_column :baselines, :base_angina_present, :integer
  	add_column :baselines, :base_heart, :integer
  	add_column :baselines, :base_heart_present, :integer
  	add_column :baselines, :base_heart_attack, :integer
  	add_column :baselines, :base_heart_attack_present, :integer
  	add_column :baselines, :base_neuro, :integer
  	add_column :baselines, :base_neuro_present, :integer
  	add_column :baselines, :base_stroke, :integer
  	add_column :baselines, :base_stroke_present, :integer
  	add_column :baselines, :base_pvd, :integer
  	add_column :baselines, :base_pvd_present, :integer
  	add_column :baselines, :base_diabetes, :integer
  	add_column :baselines, :base_diabetes_present, :integer
  	add_column :baselines, :base_gastrointestinal, :integer
  	add_column :baselines, :base_gastrointestinal_present, :integer
  	add_column :baselines, :base_depression, :integer
  	add_column :baselines, :base_depression_present, :integer
  	add_column :baselines, :base_anxiety, :integer
  	add_column :baselines, :base_anxiety_present, :integer
  	add_column :baselines, :base_visual_impairment, :integer
  	add_column :baselines, :base_visual_impairment_present, :integer
  	add_column :baselines, :base_hearing_impairment, :integer
  	add_column :baselines, :base_hearing_impairment_present, :integer
  	add_column :baselines, :base_ddd, :integer
  	add_column :baselines, :base_ddd_present, :integer
  	add_column :baselines, :base_obese, :integer
  	add_column :baselines, :base_obese_present, :integer
  	add_column :baselines, :base_fci_total, :integer
  end
end

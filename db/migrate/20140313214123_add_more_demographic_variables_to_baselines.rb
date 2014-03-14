class AddMoreDemographicVariablesToBaselines < ActiveRecord::Migration
  def change
  	remove_column :baselines, :base_general_qol
  	remove_column :baselines, :base_general_health
  	add_column :baselines, :base_height, :integer
  	add_column :baselines, :base_employment_status_a, :integer
  	add_column :baselines, :base_employment_status_b, :integer
  	add_column :baselines, :base_socioeconomic_status, :integer
  	add_column :baselines, :base_education_a, :integer
  	add_column :baselines, :base_education_b, :integer
  end
end

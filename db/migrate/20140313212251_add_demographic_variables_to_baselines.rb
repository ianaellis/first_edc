class AddDemographicVariablesToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :base_martial_status, :integer
  	add_column :baselines, :base_weight, :integer
  	add_column :baselines, :base_living_status, :integer
  	add_column :baselines, :base_living_status_other, :string
  	add_column :baselines, :base_general_health, :integer
  	add_column :baselines, :base_general_qol, :integer
  end
end

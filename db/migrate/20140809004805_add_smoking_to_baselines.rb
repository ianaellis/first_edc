class AddSmokingToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :baseline_smoking_1, :integer
  	add_column :baselines, :baseline_smoking_2, :integer
  	add_column :baselines, :baseline_smoking_3, :integer
  end
end

class AddCrfStatusToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :baseline_crf_status, :integer
  end
end

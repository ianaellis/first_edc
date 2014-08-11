class AddBaselineAmpSideToBaselines < ActiveRecord::Migration
  def change
    add_column :baselines, :baseline_amp_side, :integer
  end
end

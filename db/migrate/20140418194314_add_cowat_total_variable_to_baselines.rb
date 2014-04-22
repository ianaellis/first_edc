class AddCowatTotalVariableToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :cowat_total_f, :integer
  	add_column :baselines, :cowat_total_a, :integer
  	add_column :baselines, :cowat_total_s, :integer
  end
end

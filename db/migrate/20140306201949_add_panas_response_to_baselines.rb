class AddPanasResponseToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :panas_present_moment_or_last_week, :integer
  end
end

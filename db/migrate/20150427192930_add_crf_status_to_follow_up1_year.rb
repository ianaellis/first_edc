class AddCrfStatusToFollowUp1Year < ActiveRecord::Migration
  def change
  	add_column :follow_up1_years, :fu1year_crf_status, :integer
  end
end

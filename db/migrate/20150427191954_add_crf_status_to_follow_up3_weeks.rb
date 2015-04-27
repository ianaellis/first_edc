class AddCrfStatusToFollowUp3Weeks < ActiveRecord::Migration
  def change
  	add_column :follow_up3_weeks, :fu3week_crf_status, :integer
  end
end

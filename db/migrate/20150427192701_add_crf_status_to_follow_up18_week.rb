class AddCrfStatusToFollowUp18Week < ActiveRecord::Migration
  def change
  	add_column :follow_up18_weeks, :fu18week_crf_status, :integer
  end
end

class AddCrfStatusToFollowUp6Months < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :fu6month_crf_status, :integer
  end
end

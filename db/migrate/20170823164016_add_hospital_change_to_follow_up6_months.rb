class AddHospitalChangeToFollowUp6Months < ActiveRecord::Migration
  def change
  	remove_column :follow_up6_months, :fu6month_fuq_5a
  	add_column :follow_up6_months, :fu6month_fuq_5a, :string
  end
end

class AddVariablesToFollowUp6Months < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :fu6month_smoking_1, :integer
  	add_column :follow_up6_months, :fu6month_smoking_2, :integer
  	add_column :follow_up6_months, :fu6month_smoking_3, :integer
  	add_column :follow_up6_months, :fu6month_amp_side, :integer
  end
end

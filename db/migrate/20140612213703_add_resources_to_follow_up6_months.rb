class AddResourcesToFollowUp6Months < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :fu6month_ar_1, :integer
  	add_column :follow_up6_months, :fu6month_ar_2, :integer
  	add_column :follow_up6_months, :fu6month_ar_3, :integer
  	add_column :follow_up6_months, :fu6month_ar_4, :integer
  	add_column :follow_up6_months, :fu6month_ar_5, :integer
  	add_column :follow_up6_months, :fu6month_ar_6, :integer
  	add_column :follow_up6_months, :fu6month_ar_7, :integer
  	add_column :follow_up6_months, :fu6month_ar_8, :integer
  	add_column :follow_up6_months, :fu6month_ar_9, :integer
  	add_column :follow_up6_months, :fu6month_ar_9o, :integer
  end
end

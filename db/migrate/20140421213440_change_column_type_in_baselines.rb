class ChangeColumnTypeInBaselines < ActiveRecord::Migration
 def change

	change_column :follow_up3_weeks, :fu3week_fuq_5a, :string
 	change_column :follow_up3_weeks, :fu3week_fuq_7, :string

 	change_column :follow_up6_weeks, :fu6week_fuq_5a, :string
 	change_column :follow_up6_weeks, :fu6week_fuq_7, :string 	

 	change_column :follow_up18_weeks, :fu18week_fuq_5a, :string
 	change_column :follow_up18_weeks, :fu18week_fuq_7, :string 	

 	change_column :follow_up1_years, :fu1year_fuq_5a, :string
 	change_column :follow_up1_years, :fu1year_fuq_7, :string

 end
end

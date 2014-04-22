class ChangeColumnTypeInBaselines < ActiveRecord::Migration
 def change

	change_column :followup3week, :fu3week_fuq_5a, :string
 	change_column :followup3week, :fu3week_fuq_7, :string

 	change_column :followup6week, :fu6week_fuq_5a, :string
 	change_column :followup6week, :fu6week_fuq_7, :string 	

 	change_column :followup18week, :fu18week_fuq_5a, :string
 	change_column :followup18week, :fu18week_fuq_7, :string 	

 	change_column :followup1year, :fu1year_fuq_5a, :string
 	change_column :followup1year, :fu1year_fuq_7, :string

 end
end

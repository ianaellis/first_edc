class AddComplicationQuestionsTo6Months < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :fu6month_fuq_2, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_2a, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_3, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_3a, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_4, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_4a_level, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_4a_type, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_4b, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_5, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_5a, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_6, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_6a, :integer 
  	add_column :follow_up6_months, :fu6month_fuq_7, :integer 
  end
end

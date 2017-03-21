class AddNotesToFollowUp6Months < ActiveRecord::Migration
  def change
  		remove_column :follow_up6_months, :fu6month_fuq_5a
  		add_column :follow_up6_months, :fu6month_fuq_5a, :string

  	  	remove_column :follow_up6_months, :fu6month_fuq_7
  		add_column :follow_up6_months, :fu6month_fuq_7, :string

  		remove_column :treatment_completions, :tc_fuq_7
  		add_column :treatment_completions, :tc_fuq_7, :string
  end
end

class AddComplicationQuestionsToTreatmentCompletions < ActiveRecord::Migration
  def change
  	add_column :treatment_completions, :tc_fuq_2, :integer 
  	add_column :treatment_completions, :tc_fuq_2a, :integer 
  	add_column :treatment_completions, :tc_fuq_3, :integer 
  	add_column :treatment_completions, :tc_fuq_3a, :integer 
  	add_column :treatment_completions, :tc_fuq_4, :integer 
  	add_column :treatment_completions, :tc_fuq_4a_level, :integer 
  	add_column :treatment_completions, :tc_fuq_4a_type, :integer 
  	add_column :treatment_completions, :tc_fuq_4b, :integer 
  	add_column :treatment_completions, :tc_fuq_5, :integer 
  	add_column :treatment_completions, :tc_fuq_5a, :integer 
  	add_column :treatment_completions, :tc_fuq_6, :integer 
  	add_column :treatment_completions, :tc_fuq_6a, :integer 
  	add_column :treatment_completions, :tc_fuq_7, :integer 
  end
end

class AddVariablesToTreatmentCompletions < ActiveRecord::Migration
  def change
  	add_column :treatment_completions, :tc_smoking_1, :integer
  	add_column :treatment_completions, :tc_smoking_2, :integer
  	add_column :treatment_completions, :tc_smoking_3, :integer
  	add_column :treatment_completions, :tc_amp_side, :integer
  end
end

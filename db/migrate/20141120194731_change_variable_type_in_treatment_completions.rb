class ChangeVariableTypeInTreatmentCompletions < ActiveRecord::Migration
  def change
  	remove_column :treatment_completions, :tc_fuq_5a
  	add_column :treatment_completions, :tc_fuq_5a, :string
  end
end

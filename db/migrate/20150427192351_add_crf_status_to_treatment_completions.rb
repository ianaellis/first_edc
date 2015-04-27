class AddCrfStatusToTreatmentCompletions < ActiveRecord::Migration
  def change
  	add_column :treatment_completions, :tc_crf_status, :integer
  end
end

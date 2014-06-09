class AddAdminMethodToTreatmentCompletions < ActiveRecord::Migration
  def change
  	add_column :treatment_completions, :administration_method, :integer
  end
end

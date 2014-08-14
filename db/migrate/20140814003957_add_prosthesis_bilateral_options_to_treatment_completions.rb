class AddProsthesisBilateralOptionsToTreatmentCompletions < ActiveRecord::Migration
  def change
  	add_column :treatment_completions, :tc_pu_2_bilateral_left, :integer
  	add_column :treatment_completions, :tc_pu_3_bilateral_left, :integer
  end
end

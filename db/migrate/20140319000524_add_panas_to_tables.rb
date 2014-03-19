class AddPanasToTables < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :panas_present_moment_or_last_week, :integer
  	add_column :treatment_completions, :panas_present_moment_or_last_week, :integer
  end
end

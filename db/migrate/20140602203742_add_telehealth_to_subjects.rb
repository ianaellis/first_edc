class AddTelehealthToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :telehealth, :integer
  end
end

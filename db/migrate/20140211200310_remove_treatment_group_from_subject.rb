class RemoveTreatmentGroupFromSubject < ActiveRecord::Migration
  def up
  	remove_column :subjects, :treatment_group
  	add_column :subjects, :treatment_group, :string
  end

  def down
  end
end

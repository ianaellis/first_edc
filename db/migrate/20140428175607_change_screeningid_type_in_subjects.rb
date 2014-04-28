class ChangeScreeningidTypeInSubjects < ActiveRecord::Migration
  def change
  	remove_column :subjects, :screeningID
  	add_column :subjects, :screening_id, :string
  end
end

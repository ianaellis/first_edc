class AddScreeningidToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :screeningID, :integer 
  end
end

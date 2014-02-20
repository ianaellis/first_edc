class AddEnrolledToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :enrolled, :integer
  	add_column :subjects, :reason_not_enrolled, :integer
  end
end

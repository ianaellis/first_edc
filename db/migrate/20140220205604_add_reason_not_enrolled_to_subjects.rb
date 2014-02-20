class AddReasonNotEnrolledToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :reason_not_enrolled_other, :string
  end
end

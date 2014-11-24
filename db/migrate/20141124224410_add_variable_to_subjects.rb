class AddVariableToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :sc_exc_4, :integer
  end
end

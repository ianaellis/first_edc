class AddColumnToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :group_size_input_string, :string
  end
end

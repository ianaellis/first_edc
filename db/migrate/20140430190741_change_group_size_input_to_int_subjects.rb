class ChangeGroupSizeInputToIntSubjects < ActiveRecord::Migration
	def change
		add_column :subjects, :group_size_input, :integer
	end
end

class AddOtherNoteToFollowUp6Months < ActiveRecord::Migration
  def change
  	  	remove_column :treatment_completions, :tc_ar_9
  		add_column :treatment_completions, :tc_ar_9, :string
  end
end

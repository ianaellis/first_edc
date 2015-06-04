class AddReasonNotEligibleToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :sc_pe_5o_reason, :string
  end
end

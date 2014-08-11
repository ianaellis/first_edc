class AddScPe3aToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :sc_pe_3a, :integer
  end
end

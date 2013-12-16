class AddInclusionToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :sc_inc_1, :integer
    add_column :subjects, :sc_inc_2, :integer
    add_column :subjects, :sc_inc_2a, :integer
    add_column :subjects, :sc_inc_2b, :integer
    add_column :subjects, :sc_inc_3, :integer
    add_column :subjects, :sc_inc_4, :integer
    add_column :subjects, :sc_inc_5, :integer
  end
end

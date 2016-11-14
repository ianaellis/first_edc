class AddCommentsToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :comments, :string
  end
end

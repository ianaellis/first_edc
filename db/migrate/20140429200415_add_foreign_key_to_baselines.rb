class AddForeignKeyToBaselines < ActiveRecord::Migration
  def change
  	add_column :subjects, :baseline_id, :integer
  end
end

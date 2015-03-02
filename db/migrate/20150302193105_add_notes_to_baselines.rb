class AddNotesToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :baseline_cognitive_notes, :string
  end
end

class AddRefuseRbansOptionToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :refuse_rbans_list, :integer
  	add_column :baselines, :refuse_rbans_list_recall, :integer
  	add_column :baselines, :refuse_cwat, :integer
  	add_column :baselines, :refuse_wais_1, :integer
  	add_column :baselines, :refuse_wais_2, :integer
  end
end

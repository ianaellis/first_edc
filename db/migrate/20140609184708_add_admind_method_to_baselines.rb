class AddAdmindMethodToBaselines < ActiveRecord::Migration
  def change
  	add_column :baselines, :administration_method, :integer
  end
end

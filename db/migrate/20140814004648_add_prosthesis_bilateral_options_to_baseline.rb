class AddProsthesisBilateralOptionsToBaseline < ActiveRecord::Migration
  def change
  	add_column :baselines, :base_pu_2_bilateral_left, :integer
  	add_column :baselines, :base_pu_3_bilateral_left, :integer
  end
end

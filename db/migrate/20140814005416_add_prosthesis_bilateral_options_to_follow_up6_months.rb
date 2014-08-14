class AddProsthesisBilateralOptionsToFollowUp6Months < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :fu6month_pu_2_bilateral_left, :integer
  	add_column :follow_up6_months, :fu6month_pu_3_bilateral_left, :integer
  end
end

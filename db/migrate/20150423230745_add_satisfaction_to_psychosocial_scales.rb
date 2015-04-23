class AddSatisfactionToPsychosocialScales < ActiveRecord::Migration
  def change
  	add_column :psychosocial_scales, :psy_scale_sat_1, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_2, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_3, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_4, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_5, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_6, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_7, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_8, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_9, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_10, :integer
  	add_column :psychosocial_scales, :psy_scale_sat_11, :string
  end
end

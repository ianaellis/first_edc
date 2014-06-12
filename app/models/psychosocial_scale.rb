class PsychosocialScale < ActiveRecord::Base
	belongs_to :subject

	attr_accessible :subject_id, :psy_scale_ptcs_1, :psy_scale_ptcs_2, :psy_scale_ptcs_3, :psy_scale_ptcs_4, :psy_scale_ptcs_5, :psy_scale_ptcs_6, :psy_scale_ptcs_7, :psy_scale_ptcs_8, :psy_scale_ptcs_9, :psy_scale_ptcs_10, :psy_scale_ptcs_11, :psy_scale_ptcs_12, :psy_scale_ptcs_13, :psy_scale_ptcs_14, :psy_scale_ptcs_15, :psy_scale_ptcs_16, :psy_scale_ptcs_17
  # attr_accessible :title, :body
end

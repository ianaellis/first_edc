class FollowUp18Week < ActiveRecord::Base
	include ActiveModel::Conversion
	extend  ActiveModel::Naming
	
	belongs_to :subject
	attr_accessible :subject_id
	attr_accessible :fu18week_fuq_1,  :fu18week_fuq_2,  :fu18week_fuq_2a, :fu18week_fuq_3,  :fu18week_fuq_3a, :fu18week_fuq_4,  :fu18week_fuq_4a_level, :fu18week_fuq_4a_type,  :fu18week_fuq_4b, :fu18week_fuq_5,  :fu18week_fuq_5a, :fu18week_fuq_6,  :fu18week_fuq_6a, :fu18week_fuq_7

end

class FollowUp6Week < ActiveRecord::Base
	include ActiveModel::Conversion
   	extend  ActiveModel::Naming
   	
   	belongs_to :subject

   	#Deprecated
  	# attr_accessible :subject_id, :fu6week_fuq_1,   :fu6week_fuq_2,   :fu6week_fuq_2a,  :fu6week_fuq_3,   :fu6week_fuq_3a,  :fu6week_fuq_4,   :fu6week_fuq_4a_level,  :fu6week_fuq_4a_type,   :fu6week_fuq_4b,  :fu6week_fuq_5,   :fu6week_fuq_5a,  :fu6week_fuq_6,   :fu6week_fuq_6a,  :fu6week_fuq_7
end

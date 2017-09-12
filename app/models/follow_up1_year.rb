class FollowUp1Year < ActiveRecord::Base
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	belongs_to :subject
	# Deprecated
	# attr_accessible :subject_id, :fu1year_crf_status, :fu1year_fuq_1,   :fu1year_fuq_2,   :fu1year_fuq_2a,  :fu1year_fuq_3,   :fu1year_fuq_3a,  :fu1year_fuq_4,   :fu1year_fuq_4a_level,  :fu1year_fuq_4a_type,   :fu1year_fuq_4b,  :fu1year_fuq_5,   :fu1year_fuq_5a,  :fu1year_fuq_6,   :fu1year_fuq_6a,  :fu1year_fuq_7
end

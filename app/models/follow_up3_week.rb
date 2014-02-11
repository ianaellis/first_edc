class FollowUp3Week < ActiveRecord::Base
	include ActiveModel::Conversion
   	extend  ActiveModel::Naming
   	
   	belongs_to :subject
  	attr_accessible :subject_id
  	attr_accessible :fu3week_fuq_1,  :fu3week_fuq_2,   :fu3week_fuq_2a,  :fu3week_fuq_3,   :fu3week_fuq_3a,  :fu3week_fuq_4,   :fu3week_fuq_4a_level,  :fu3week_fuq_4a_type,   :fu3week_fuq_4b,  :fu3week_fuq_5,   :fu3week_fuq_5a,  :fu3week_fuq_6,   :fu3week_fuq_6a,  :fu3week_fuq_7
end

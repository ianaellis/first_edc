class FollowUpLog < ActiveRecord::Base
	include ActiveModel::Conversion
	extend  ActiveModel::Naming
	
	attr_accessible :site, :baseline_target, :baseline_completed, :baseline_reasons, :week3_target, :week3_completed, :week3_reasons, :week6_completed, :week6_target, :week6_reasons, :tc_completed, :tc_target, :tc_reasons, :week18_completed, :week18_target, :week18_reasons, :month6_completed, :month6_target, :month6_reasons, :year1_completed, :year1_target, :year1_reasons
end

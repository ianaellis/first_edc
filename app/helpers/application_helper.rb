module ApplicationHelper
	def full_title(page_title)
		base_title = "VetPALS Data Entry"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	#Auto path gathering function for for-loop production of link_to items in subject index
	def crf_path(crf)
	    case crf
	    when Baseline then baseline_path(crf)
	    when FollowUp3Week then follow_up3_week_path(crf)
	    when TreatmentCompletion then treatment_completion_path(crf)
	    when FollowUp18Week then follow_up18_week_path(crf)
	    when FollowUp6Month then follow_up6_month_path(crf)
	    when PsychosocialScale then psychosocial_scale_path(crf)
	    end
  	end

  	def crf_status(crf)
  		case crf.class
  		when Baseline then :baseline_crf_status
  		when FollowUp3Week then :fu3week_crf_status
  		when TreatmentCompletion then :tc_crf_status
  		when FollowUp18Week then :fu18week_crf_status
  		when FollowUp6Month then :fu6month_crf_status
  		end
  	end
end


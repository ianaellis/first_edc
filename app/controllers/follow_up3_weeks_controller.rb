class FollowUp3WeeksController < ApplicationController
	def show
		@followup3week = FollowUp3Week.find(params[:id])
	end

	def new
		@followup3week = FollowUp3Week.new
	end

	def create
		@followup3week = FollowUp3Week.new(params[:followup3week])
		if @followup3week.save
			redirect_to @followup3week
		else
			render 'new'
		end
	end

	def edit
	 @followup3week = followup3week.find(params[:id])
	end

	def update
		# @followup3week = followup3week.find(params[:id])
		@followup3week = FollowUp3Week.find(params[:id])
		if @followup3week.update_attributes(followup3week_params)
		  flash[:success] = "3 Week Chart Review Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup3week
		@followup3week = FollowUp3Week.find(params[:subject_id])
	end

private
	def followup3week_params
		params.require(:followup3week).permit(:subject_id, :fu3week_crf_status, :fu3week_fuq_1,  :fu3week_fuq_2,   :fu3week_fuq_2a,  :fu3week_fuq_3,   :fu3week_fuq_3a,  :fu3week_fuq_4,   :fu3week_fuq_4a_level,  :fu3week_fuq_4a_type,   :fu3week_fuq_4b,  :fu3week_fuq_5,   :fu3week_fuq_5a,  :fu3week_fuq_6,   :fu3week_fuq_6a,  :fu3week_fuq_7)
	end

end

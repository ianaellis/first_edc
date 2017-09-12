class FollowUp18WeeksController < ApplicationController
	def show
		@followup18week = FollowUp18Week.find(params[:id])
	end

	def new
		@followup18week = FollowUp18Week.new
	end

	def create
		@followup18week = FollowUp18Week.new(params[:followup18week])
		if @followup18week.save
		  redirect_to @followup18week
		else
			render 'new'
		end
	end

	def edit
	 # @followup18week = followup18week.find(params[:id])
	end

	def update
		# @followup18week = followup18week.find(params[:id])
		@followup18week = FollowUp18Week.find(params[:id])
		if @followup18week.update_attributes(followup18week_params)
		  flash[:success] = "18 Week Chart Review Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup18week
		@followup18week = FollowUp18Week.find(params[:subject_id])
	end

private
	
	def followup18week_params
		params.require(:followup18week).permit(:subject_id, :fu18week_crf_status, :fu18week_fuq_1,  :fu18week_fuq_2,  :fu18week_fuq_2a, :fu18week_fuq_3,  :fu18week_fuq_3a, :fu18week_fuq_4,  :fu18week_fuq_4a_level, :fu18week_fuq_4a_type,  :fu18week_fuq_4b, :fu18week_fuq_5,  :fu18week_fuq_5a, :fu18week_fuq_6,  :fu18week_fuq_6a, :fu18week_fuq_7)
	end

end

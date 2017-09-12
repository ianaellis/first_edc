class FollowUp6WeeksController < ApplicationController
	def show
		@followup6week = FollowUp6Week.find(params[:id])
	end

	def new
		@followup6week = FollowUp6Week.new
	end

	def create
		@followup6week = FollowUp6Week.new(params[:followup6week])
		if @followup6week.save
			redirect_to @followup6week
		else
			render 'new'
		end
	end

	def edit
	 # @followup6week = followup6week.find(params[:id])
	end

	def update
		@followup6week = FollowUp6Week.find(params[:id])
		if @followup6week.update_attributes(params[:followup6week])
		  flash[:success] = "6 Week Chart Review Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup6week
		@followup6week = FollowUp6Week.find(params[:subject_id])
	end

private
	
	def followup6week_params
		params.require(:followup6week).permit(:subject_id, :fu6week_fuq_1,   :fu6week_fuq_2,   :fu6week_fuq_2a,  :fu6week_fuq_3,   :fu6week_fuq_3a,  :fu6week_fuq_4,   :fu6week_fuq_4a_level,  :fu6week_fuq_4a_type,   :fu6week_fuq_4b,  :fu6week_fuq_5,   :fu6week_fuq_5a,  :fu6week_fuq_6,   :fu6week_fuq_6a,  :fu6week_fuq_7)
	end

end

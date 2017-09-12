class FollowUp1YearsController < ApplicationController
	def show
		@followup1year = FollowUp1Year.find(params[:id])
	end

	def new
		@followup1year = FollowUp1Year.new
	end

	def create
		@followup1year = FollowUp1Year.new(params[:followup1year])
		if @followup1year.save
			redirect_to @followup1year
		else
			render 'new'
		end
	end

	def edit
	 # @followup1year = followup1year.find(params[:id])
	end

	def update
		# @followup1year = followup1year.find(params[:id])
		@followup1year = FollowUp1Year.find(params[:id])
		if @followup1year.update_attributes(followup1year_params)
		  flash[:success] = "1 Year Chart Review updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup1year
		@followup1year = FollowUp1Year.find(params[:subject_id])
	end

private
	def followup1year_params
		params.require(:followup1year).permit(:subject_id, :fu1year_crf_status, :fu1year_fuq_1,   :fu1year_fuq_2,   :fu1year_fuq_2a,  :fu1year_fuq_3,   :fu1year_fuq_3a,  :fu1year_fuq_4,   :fu1year_fuq_4a_level,  :fu1year_fuq_4a_type,   :fu1year_fuq_4b,  :fu1year_fuq_5,   :fu1year_fuq_5a,  :fu1year_fuq_6,   :fu1year_fuq_6a,  :fu1year_fuq_7)
	end
end

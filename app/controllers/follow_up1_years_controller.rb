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
		if @followup1year.update_attributes(params[:followup1year])
		  flash[:success] = "1 Year Chart Review updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup1year
		@followup1year = FollowUp1Year.find(params[:subject_id])
	end
end

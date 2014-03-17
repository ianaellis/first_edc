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
		if @followup18week.update_attributes(params[:followup18week])
		  flash[:success] = "18 Week Chart Review Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup18week
		@followup18week = FollowUp18Week.find(params[:subject_id])
	end

end

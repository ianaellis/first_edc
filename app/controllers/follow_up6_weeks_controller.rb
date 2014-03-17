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
		# @followup6week = followup6week.find(params[:id])
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
end

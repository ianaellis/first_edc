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
		if @followup3week.update_attributes(params[:followup3week])
		  flash[:success] = "3 Week Chart Review Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

	def followup3week
		@followup3week = FollowUp3Week.find(params[:subject_id])
	end

end

class FollowUp6MonthsController < ApplicationController

	def new
		session[:followup6month_params] ||= {}
		@followup6month = FollowUp6Month.new(session[:followup6month_params])
		@followup6month.current_step = session[:followup6month_step]
	end

	def edit
		@followup6month = FollowUp6Month.find(params[:id])
	end

	def followup6month
		@followup6month = FollowUp6Month.find(params[:subject_id])
	end

	def show
		@followup6month = FollowUp6Month.find(params[:id])
	end


	def update
		session[:followup6month_params].deep_merge!(params[:followup6month]) if params[:followup6month_id]
		@followup6month = FollowUp6Month.find(params[:id])
		@followup6month.current_step = session[:followup6month_step]
		if params[:back_button]
		  @followup6month.update_attributes(params[:followup6month])
		  @followup6month.previous_step
		else
		  @followup6month.update_attributes(params[:followup6month])
		  @followup6month.next_step
		end
		if params[:submit_button]
		  if @followup6month.update_attributes(params[:followup6month])
		    flash[:notice] = "6 Month Follow Up Information Saved"
		  else
		    flash[:notice] = "Did not save followup6month, could not update attributes"
		  end
		  session[:followup6month_step] = session[:followup6month_params] = nil
		  redirect_to subjects_url
		else
		  session[:followup6month_step] = @followup6month.current_step
		  render "show"
		end

	end
end

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
  	        session[:followup6month_step] = @followup6month.current_step
      		render "show"
	    elsif params[:next_button]
	    	@followup6month.update_attributes(params[:followup6month])
	      	@followup6month.next_step
      	    session[:followup6month_step] = @followup6month.current_step
      		render "show"
	    elsif params[:submit_button]
	      if @followup6month.update_attributes(params[:followup6month])
	        flash[:success] = "Treatment Completion Information Updated"
            session[:followup6month_step] = session[:followup6month_params] = nil
        	redirect_to subjects_url
	      else
	        flash[:notice] = "Did not save Treatment Completion, could not update attributes"
	        respond_to do |format|
          		format.html { render action: "show" }
          		format.json { render json: @baseline.errors, status: :unprocessable_entity }
        	end
	      end 
	    elsif params[:status_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "status"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:smfa_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "smfa"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:phq_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "phq"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:whoqol_bref_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "whoqol_bref"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:positive_negative_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "positive_negative"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:mses_self_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "mses_self"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:pam_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "pam"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:spsir_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "spsir"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:ssscq_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "ssscq"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:prosthesis_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "prosthesis"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:pain_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "pain"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:mspss_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "mspss"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:audit_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "audit"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:medical_review_link]
	      @followup6month.update_attributes(params[:followup6month])
	      @followup6month.current_step = "medical_review"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    end

	end
end

# OLD update
# if params[:back_button]
#   @followup6month.update_attributes(params[:followup6month])
#   @followup6month.previous_step
# else
#   @followup6month.update_attributes(params[:followup6month])
#   @followup6month.next_step
# end
# if params[:submit_button]
#   if @followup6month.update_attributes(params[:followup6month])
#     flash[:success] = "6 Month Follow Up Information Saved"
#   else
#     flash[:notice] = "Did not save followup6month, could not update attributes"
#   end
#   session[:followup6month_step] = session[:followup6month_params] = nil
#   redirect_to subjects_url
# else
#   session[:followup6month_step] = @followup6month.current_step
#   render "show"
# end
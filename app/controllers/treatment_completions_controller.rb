class TreatmentCompletionsController < ApplicationController
	def new
		session[:tc_params] ||= {}
	    @tc = TreatmentCompletion.new(session[:tc_params])
	    @tc.current_step = session[:tc_step]
	end

	def show
		@tc = TreatmentCompletion.find(params[:id])
	end

	def update
		session[:tc_params].deep_merge!(params[:tc]) if params[:tc_id]
	    @tc = TreatmentCompletion.find(params[:id])
	    @tc.current_step = session[:tc_step]

	    if params[:back_button]
	    	@tc.update_attributes(params[:tc])
	      	@tc.previous_step
  	        session[:tc_step] = @tc.current_step
      		render "show"
	    elsif params[:next_button]
	    	@tc.update_attributes(params[:tc])
	      	@tc.next_step
      	    session[:tc_step] = @tc.current_step
      		render "show"
	    elsif params[:submit_button]
	      if @tc.update_attributes(params[:tc])
	        flash[:success] = "Treatment Completion Information Updated"
            session[:tc_step] = session[:tc_params] = nil
        	redirect_to subjects_url
	      else
	        flash[:notice] = "Did not save Treatment Completion, could not update attributes"
	        respond_to do |format|
          		format.html { render action: "show" }
          		format.json { render json: @baseline.errors, status: :unprocessable_entity }
        	end
	      end 
	    elsif params[:status_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "status"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:smfa_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "smfa"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:phq_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "phq"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:whoqol_bref_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "whoqol_bref"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:positive_negative_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "positive_negative"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:mses_self_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "mses_self"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:pam_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "pam"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:spsir_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "spsir"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:ssscq_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "ssscq"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:prosthesis_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "prosthesis"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:pain_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "pain"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:mspss_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "mspss"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:audit_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "audit"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:accessing_resources_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "accessing_resources"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    elsif params[:week6_review_link]
	      @tc.update_attributes(params[:tc])
	      @tc.current_step = "week6_review"
	      session[:tc_step] = @tc.current_step
	      render "show"
	    end
	end

	def tc
		@tc = TreatmentCompletion.find(params[:subject_id])
		session[:tc_params] ||= {}
	end

	def edit
		@tc = TreatmentCompletion.find(params[:id])
	end

	def create
    	@tc = TreatmentCompletion.new(params[:tc])
	    if @tc.save
	      flash[:success] = "Treatment Completion added from the create method."
	      redirect_to treatment_completions_url
	    else
	      render 'new'
	    end
    end
end


# OLD Update
# def update
# 	session[:tc_params].deep_merge!(params[:tc]) if params[:tc_id]
#     @tc = TreatmentCompletion.find(params[:id])
#     @tc.current_step = session[:tc_step]
#     if params[:back_button]
#     	@tc.update_attributes(params[:tc])
#       	@tc.previous_step
#     else
#     	@tc.update_attributes(params[:tc])
#       	@tc.next_step
#     end
#     if params[:submit_button]
#       if @tc.update_attributes(params[:tc])
#         flash[:success] = "Treatment Completion Information Updated"
#       else
#         flash[:notice] = "Did not save Treatmetn Completion, could not update attributes"
#       end
#       session[:tc_step] = session[:tc_params] = nil
#       redirect_to subjects_url
#     else
#       session[:tc_step] = @tc.current_step
#       render "show"
#     end
# end
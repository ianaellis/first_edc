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
	      @tc.previous_step
	    else
	      @tc.next_step
	    end
	    if params[:submit_button]
	      if @tc.update_attributes(params[:tc])
	        flash[:success] = "Treatment Completion Information Updated"
	      else
	        flash[:notice] = "Did not save Treatmetn Completion, could not update attributes"
	      end
	      session[:tc_step] = session[:tc_params] = nil
	      redirect_to subjects_url
	    else
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

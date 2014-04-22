class BaselinesController < ApplicationController
  load_and_authorize_resource
	def new
		# @baseline = Baseline.new
    session[:baseline_params] ||= {}
    @baseline = Baseline.new(session[:baseline_params])
    @baseline.current_step = session[:baseline_step]
	end

  def show
    @baseline = Baseline.find(params[:id])
  end

	def update
    session[:baseline_params].deep_merge!(params[:baseline]) if params[:baseline_id]
    @baseline = Baseline.find(params[:id])
    @baseline.current_step = session[:baseline_step]
    if params[:back_button]
      @baseline.update_attributes(params[:baseline])
      @baseline.previous_step
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:next_button]
      @baseline.update_attributes(params[:baseline])
      @baseline.next_step
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:submit_button]
      if @baseline.update_attributes(params[:baseline])
        flash[:success] = "Baseline Information Updated"
        session[:baseline_step] = session[:baseline_params] = nil
        redirect_to subjects_url
      else
        flash[:notice] = "Did not save baseline, could not update attributes"
        respond_to do |format|
          format.html { render action: "show" }
          format.json { render json: @baseline.errors, status: :unprocessable_entity }
        end
      end
    elsif params[:general_demo_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "general_demo"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:fci_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "fci"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:comorbidity_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "comorbidity"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:sfmfa_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "sfmfa"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:phq_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "phq"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:whoqol_bref_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "whoqol_bref"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:positive_negative_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "positive_negative"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:mses_self_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "mses_self"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:pam_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "pam"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:spsir_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "spsir"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:change_questionnaire_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "change_questionnaire"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:prosthesis_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "prosthesis"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:fci_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "fci"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:pain_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "pain"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:mspss_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "mspss"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:audit_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "audit"
      session[:baseline_step] = @baseline.current_step
      render "show"
    elsif params[:stop_link]
      @baseline.update_attributes(params[:baseline])
      @baseline.current_step = "stop"
      session[:baseline_step] = @baseline.current_step
      render "show"
    end

  end

  # def update
  #   @baseline = Baseline.find(params[:id])

  #   if params[:general_demo_link]
  #     @baseline.update_attributes(params[:baseline])
  #     redirect_to 'general_demo'
  #   else
  #     redirect_to 'base_audit'
  #   end
  # end
  
  def baseline
    @baseline = Baseline.find(params[:subject_id])
    session[:subject_params] ||= {}
  end

  def edit
  	@baseline = Baseline.find(params[:id])
  end

  def create
    @baseline = Baseline.new(params[:baseline])
    if @baseline.save
      flash[:success] = "Baseline added from the create method."
      redirect_to baselines_url
    else
      render 'new'
    end
  end
end

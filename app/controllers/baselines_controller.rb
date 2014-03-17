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
    else
      @baseline.update_attributes(params[:baseline])
      @baseline.next_step
    end
    if params[:submit_button]
      if @baseline.update_attributes(params[:baseline])
        flash[:success] = "Baseline Information Saved"
      else
        flash[:notice] = "Did not save baseline, could not update attributes"
      end
      session[:baseline_step] = session[:baseline_params] = nil
      redirect_to subjects_url
    else
      session[:baseline_step] = @baseline.current_step
      render "show"
    end
  end
  
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

class FollowUpLogsController < ApplicationController
  def index
  	@follow_up_log = FollowUpLog.all
  end

  def show
  	@follow_up_log = FollowUpLog.find(params[:id])
  end

  def new
  	@follow_up_log = FollowUpLog.new
  end

  def create
  	@follow_up_log = FollowUpLog.new(params[:follow_up_log])

  	if @follow_up_log.save
  		redirect_to @follow_up_log
  	else
  		render 'new'
  	end
  end

  def update
    @follow_up_log = FollowUpLog.find(params[:id])
    if @follow_up_log.update_attributes(params[:follow_up_log])
      flash[:success] = "Log Updated"
      redirect_to @follow_up_log
    else
      render 'edit'
    end
  end

  def edit
    @follow_up_log = FollowUpLog.find(params[:id])
  end

  def destroy
    if current_user.is? :admin
      @follow_up_log = FollowUpLog.find(params[:id])
      @follow_up_log.destroy

      respond_to do |format|
        format.html { redirect_to @follow_up_log }
        format.json { head :no_content }
      end
    end
  end

private

  def follow_up_log_params
    params.require(:follow_up_log).permit(:site, :baseline_target, :baseline_completed, :baseline_reasons, :week3_target, :week3_completed, :week3_reasons, :week6_completed, :week6_target, :week6_reasons, :tc_completed, :tc_target, :tc_reasons, :week18_completed, :week18_target, :week18_reasons, :month6_completed, :month6_target, :month6_reasons, :year1_completed, :year1_target, :year1_reasons)
  end

end

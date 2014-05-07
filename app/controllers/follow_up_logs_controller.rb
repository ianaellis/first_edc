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

end

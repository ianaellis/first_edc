class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  before_filter :authenticate_user!
  def index
    @subjects = Subject.paginate(page: params[:page])
  end

  def new
    @subject = Subject.new
    @user = User.new
  end
  
  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(params[:subject])

    respond_to do |format|
      if @subject.save
        flash[:success] = "Subject successfully added."
        redirect_to subjects_path
      else
        format.html { render action: "new" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(params[:subject])
      flash[:success] = "Subject Screening Log Submitted."
      redirect_to subjects_url
    else
      flash[:failure] = "Subject Screening was NOT updated. Error occurred."

      format.json { render json: @subject.errors, status: :unprocessable_entity }
      redirect_to subjects_url
    end
  end

  def destroy
    if current_user.is? :admin
      @subject = Subject.find(params[:id])
      @subject.destroy

      respond_to do |format|
        format.html { redirect_to subjects_url }
        format.json { head :no_content }
      end
    end
  end

  def screening_log
    @subjects = Subject.paginate(page: params[:page])
  end  

  def screening_crf_data
    @subjects = Subject.paginate(page: params[:page])
  end


  def screening
    @subject = Subject.find(params[:subject_id])
  end



  def randomize
    # Create random assignment variable
    @rand_num = rand(999)
    @treatment = '0'

    if @rand_num < 500
      @treatment = '1'
    else
      @treatment = '2'
    end

    if (params[:group_size_input].to_i >= 6 ) and (params[:group_size_input].to_i <= 10)
      @group_to_randomize = Subject.where("study_site = ? AND treatment_group is null", params[:site_input].to_i).order("created_at ASC").limit(params[:group_size_input].to_i)
      
      if params[:treatment_group_name] != '' and params[:site_input] != '' and params[:group_size_input] != ''
        @group_to_randomize.update_all(treatment_group:params[:treatment_group_name], pref_rand: @treatment.to_i)
        flash[:notice] = "Subjects randomized, and assigned to group #{params[:treatment_group_name]}"
      else
        flash[:notice] = "Nothing saved, please fill in the form completely."
      end
    else
      flash[:notice] = "The group size must be between 6 and 10."
    end
  end

end

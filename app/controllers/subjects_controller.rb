class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  before_filter :authenticate_user!
  def index
    @subjects = Subject.paginate(page: params[:page])
  end

  def new
    @subject = Subject.new
  end
  
  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(params[:subject])
    respond_to do |format|
      if @subject.save
        flash[:success] = "Subject successfully added."
        format.html { render action: "screening" }
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
      redirect_to screening_log_path
    else
      flash[:failure] = "Subject Screening was NOT updated. Error occurred."

      format.json { render json: @subject.errors, status: :unprocessable_entity }
      redirect_to subjects_url
    end
  end

  def destroy
    if current_user.is? :admin
      @subject = Subject.find(params[:id])
      @baseline = Baseline.find(params[:id])
      @week3 = FollowUp3Week.find(params[:id])
      @week6 = FollowUp6Week.find(params[:id])
      @tc = TreatmentCompletion.find(params[:id])
      @week18 = FollowUp18Week.find(params[:id])
      @year1 = FollowUp1Year.find(params[:id])

      @subject.destroy
      @baseline.destroy
      @week3.destroy
      @week6.destroy
      @tc.destroy
      @week18.destroy
      @year1.destroy

      respond_to do |format|
        format.html { redirect_to subjects_path }
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
    # Test RIDING THE RAILS
    @group_size_input = params[:test_rand_variable]

    # Create random assignment variable
    @rand_num = rand(999)
    @treatment = 0
    @treatment_name = ""

    @subject_array = Array.new
    # @subject_array = params[:group_size_input_string].to_a
    # @subjectIDsForRandomization = @subject_array.try(:split,",") || 'no'

    if @rand_num < 500
      @treatment = 1
      @treatment_name = "Vetpals Group"
    else
      @treatment = 2
      @treatment_name = "Normal Care"
    end
    # flash[:success] = "#{params[:test_rand_variable]}" || 'mp'
    # if (@group_size_input >= 6 ) and (@group_size_input <= 10 )
    #   @group_to_randomize = Subject.where("study_site = ? AND treatment_group is null", params[:site_input].to_i).order("created_at ASC").limit(params[:group_size_input].to_i)
    #   if params[:site_input] != '' and params[:group_size_input] != ''
    #     @group_to_randomize.update_all(pref_rand: @treatment.to_i)
    #     flash[:success] = "Subjects randomized, and assigned the #{params[:treatment_name]}"
    #     redirect_to screening_log_path
    #   else
    #     flash[:failure] = "Nothing saved, please fill in the form completely."
    #     redirect_to screening_log_path
    #   end
    #   flash[:success] = "We got here"
    # else
    #   flash[:failure] = "Nope its still here"
    # end
  end

end

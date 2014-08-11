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

  # def randomize
  #   #Check if page has been populated; this check prevents Nil::class errors.
  #   if params[:test_rand_variable] != nil
  #     #Gather the group size from the view.
  #     @group_size_input = params[:test_rand_variable][:test_rand_variable].to_i

  #     #Variable assignment
  #     @rand_num = rand(999) # Generate a random number from 0 to 999 (1000 integers)
  #     @treatment_name = ""  # Declare variable for treatment name allocation

  #     #Assign random treament
  #     if @rand_num < 500 # 0 to 499 
  #       @treatment = '1'
  #       @treatment_name = "Vetpals Group"
  #     else               # 500 to 999
  #       @treatment = '2'
  #       @treatment_name = "Normal Care"
  #     end

  #     #Unnecessary check on group size, in case we add the ability to write in subject IDs.
  #     if (@group_size_input >= 6 ) and (@group_size_input <= 10 )

  #       #Store subjects to be randomized
  #       @group_to_randomize = Subject.where("study_site = ? AND treatment_group is null AND enrolled = 1", 
  #                                           params[:study_site ][:site]).order("created_at ASC").limit(@group_size_input)
  #       #Check if the form has been filled out.
  #       if params[:study_site] != '' and params[:test_rand_variable] != nil
  #         #Check if there are enough enrolled subjects to be randomized.
  #         if @group_to_randomize.to_a.count != @group_size_input
  #           flash[:failure] = "There are not enough enrolled subjects for your selection."
  #         else
  #           #Attempt to update treatment_group value for each record.
  #           if @group_to_randomize.update_all(treatment_group: @treatment)
  #             flash[:success] = "Subjects randomized, and assigned the #{@treatment_name}"
  #             redirect_to screening_log_path
  #           else
  #             flash[:failure] = "Subjects failed to save."
  #           end
  #         end
  #       else
  #         flash[:failure] = "Please make sure to select your study site and the group size."
  #       end
  #     else
  #       flash[:failure] = "Please select a group size from the select box."
  #     end
  #   end
  # end
end

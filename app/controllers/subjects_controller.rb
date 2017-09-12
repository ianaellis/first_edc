class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  before_action :authenticate_user!


  def index
    @subjects = Subject.paginate(page: params[:page])

    # Used to produce table links
    @crf_to_view = [Baseline, FollowUp3Week, TreatmentCompletion, FollowUp18Week, FollowUp6Month, PsychosocialScale]
  end

  def new
    @subject = Subject.new
  end
  
  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(params[:subject].permit(:study_site, :screening_id))
    respond_to do |format|
      if @subject.save
        create_crf_records(@subject)
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

    # if @subject.update_attributes(params[:subject].permit(:subject_screening_log_params))
    if @subject.update_attributes!(subject_params)

      create_crf_records(@subject)
      flash[:success] = "Subject Screening Log Updated"
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

      # Uncomment to allow the Delete subject button to work
      # @subject.destroy
      # @baseline.destroy
      # @week3.destroy
      # @week6.destroy
      # @tc.destroy
      # @week18.destroy
      # @year1.destroy

      respond_to do |format|
        format.html { redirect_to subjects_path }
        format.json { head :no_content }
      end
    end
  end

  def screening_log
    @subjects = Subject.paginate(page: params[:page])
  end

  def screening_view
    @subjects = Subject.paginate(page: params[:page])
  end

  def screening_crf_data
    @subjects = Subject.paginate(page: params[:page])
  end


  def screening
    @subject = Subject.find(params[:subject_id])
  end

  def comment
    @subjects = Subject.find(params[:subject_id])

    if params[:submit_button]
      @subjects.update_attributes!(comment_params)
      redirect_to subjects_path
    end
  end


private 

  CRF_TO_CREATE = [Baseline, TreatmentCompletion, FollowUp3Week, FollowUp6Week, FollowUp18Week, FollowUp6Month, FollowUp1Year, PsychosocialScale]

  # Task: Refactor params out into individual blocks, for extra security
  # def subject_screening_log_params
  #   params.require(:subject).permit(:subject_id, :enrolled)
  # end
  def comment_params
    params.require(:subjects).permit(:treatment_group, :comments)
  end
  def subject_params
    params.require(:subject).permit(:comments, :screening_id, :telehealth, :sc_pe_3a, :treatment_group, :enrolled, :reason_not_enrolled, :reason_not_enrolled_other, :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_exc_4, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pd_6, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_pe_5o_reason, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5, :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10)
  end

  # Create all CRF records once a screened subject becomes enrolled and has been assigned a subject ID
  def create_crf_records(sub)

    if sub.subject_id != nil and sub.enrolled == 1
       CRF_TO_CREATE.each do |crf|
          if crf.exists?(subject_id: sub.subject_id)
             #do nothing
          else
             crf.create(subject_id: sub.subject_id)
          end
       end   
    end
  end
    
end

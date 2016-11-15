class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  before_filter :authenticate_user!


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
    @subject = Subject.new(params[:subject])
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

    if @subject.update_attributes(params[:subject])
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

  def screening_crf_data
    @subjects = Subject.paginate(page: params[:page])
  end


  def screening
    @subject = Subject.find(params[:subject_id])
  end

  def comment
    @subjects = Subject.find(params[:subject_id])

    if params[:submit_button]
      @subjects.update_attributes(params[:subjects])
      redirect_to subjects_path
    end
    # if @subject.update_attributes(params[:subject])
    #   create_crf_records(@subject)
    #   flash[:success] = "Comment Updated"
    #   redirect_to subjects_path
    # else
    #   flash[:failure] = "Comment not updated. Error occurred."

    #   format.json { render json: @subject.errors, status: :unprocessable_entity }
    #   redirect_to subjects_url
    # end
  end


private 

  CRF_TO_CREATE = [Baseline, TreatmentCompletion, FollowUp3Week, FollowUp6Week, FollowUp18Week, FollowUp6Month, FollowUp1Year, PsychosocialScale]

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

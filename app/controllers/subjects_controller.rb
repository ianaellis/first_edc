class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  def index
    # @subjects = Subject.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @subjects }
    # end
    @subjects = Subject.paginate(page: params[:page])
    # @baselines = Baseline.all
  end

  def screening_log 
    @subjects = Subject.paginate(page: params[:page])
  end

  def show
    @subject = Subject.find(params[:id])
     
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @subject }
    # end
  end

  # GET /subjects/new
  # GET /subjects/new.json
  def new
    @subject = Subject.new

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @subject }
    # end
  end

  # GET /subjects/1/edit
  def edit
    @subject = Subject.find(params[:id])
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(params[:subject])

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render json: @subject, status: :created, location: @subject }
      else
        format.html { render action: "new" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subjects/1
  # PUT /subjects/1.json
  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(params[:subject])
      flash[:success] = "Subject Screening Log Submitted."
      redirect_to @subject
    else
      render 'edit'
    end

  end

  # GET /subjects/1/screening
  def screening
    @subject = Subject.find(params[:subject_id])
  end


  def tc
    @subject = Subject.find(params[:subject_id])
    session[:subject_params] ||= {}
  end
  
  def fu3week
    @subject = Subject.find(params[:subject_id])
  end

  def fu6week
    @subject = Subject.find(params[:subject_id])
  end

  def fu18week
    @subject = Subject.find(params[:subject_id])
  end
  
  def fu6month
    @subject = Subject.find(params[:subject_id])
  end

  def fu1year
    @subject = Subject.find(params[:subject_id])
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to subjects_url }
      format.json { head :no_content }
    end
  end

  def randomize
    # puts params.inspect
    @site = params[:site_input]
    @group_size = params[:group_size_input]
    # @treatment_group_name = params[:treatment_group_name]
    @rand_num = rand(999)
    @treatment = '0'

    # Create random assignment variable
    if @rand_num < 500
      @treatment = '1'
    else
      @treatment = '2'
    end
    flash[:notice] = "Made it to the randomize block"
    if (@group.to_i >= 6) || (@group.to_i <= 10)
      # Subject.find_by_sql("SELECT * FROM Subject WHERE ")
      
      flash[:notice] = "We are at the database level."
      # @new_group = Subject.where("study_site = ?  AND treatment_group is null", params[:site_input].to_i).order('created_at ASC').limit(@group_size)
      # flash[:notice] = @new_group.inspect
      # @new_group.update_all(["treatment_group = ? AND pref_rand = ?", params[:treatment_group_name].to_i, @treatment.to_i])
      # @new_group.treatment_group.inspect
      
      
      # SELECT * FROM Subject WHERE subject_id >= 1000 
      #                             and subject_id < 2000
      #                             and group_variable == nill
      #                       ORDER BY created_at ASC
      #                       LIMIT @group

      # retreive @group from database
      # select @group from subjects where date is the oldest and subject does not already have a group number
      # assign each record in @group a @treatment and @group_name
    else
      flash[:notice] = @group
      # bad range of numbers entered
    end
  end
  

  # def populate_values
  #   @subject_id = params[:subject_id]
  #   redirect_to screening_path(@subject_id)
  # end
end

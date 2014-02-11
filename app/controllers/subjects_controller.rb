class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.paginate(page: params[:page])
  end

  def screening_log 
    @subjects = Subject.paginate(page: params[:page])
  end

  def show
    @subject = Subject.find(params[:id])
  end

  # GET /subjects/new
  # GET /subjects/new.json
  def new
    @subject = Subject.new
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

    # Create random assignment variable
    @rand_num = rand(999)
    @treatment = '0'

    if @rand_num < 500
      @treatment = '1'
    else
      @treatment = '2'
    end

    if (params[:group_size_input].to_i >= 2 ) and (params[:group_size_input].to_i <= 10)
      @group_to_randomize = Subject.where("study_site = ? AND treatment_group is null", params[:site_input].to_i).order("created_at ASC").limit(params[:group_size_input].to_i)
      
      flash[:notice] = "We are at the database level. #{@group_to_randomize.inspect}"
      if params[:treatment_group_name] != '' and params[:site_input] != '' and params[:group_size_input] != ''
        @group_to_randomize.update_all(treatment_group:params[:treatment_group_name], pref_rand: @treatment.to_i)
        flash[:notice] = "Subjects randomized, and assigned to group #{params[:treatment_group_name]}"
      else
        flash[:notice] = "Nothing saved, please fill in the form completely."
      end

      # render "randomize"
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
      flash[:notice] = "Did not meet pass the if statement"
      # bad range of numbers entered
    end
  end
  

  # def populate_values
  #   @subject_id = params[:subject_id]
  #   redirect_to screening_path(@subject_id)
  # end
end

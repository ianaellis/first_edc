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
  end

  # def screening
  #   @subject = Subject.find(params[:id])
  # end
  
  # GET /subjects/1
  # GET /subjects/1.json
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
    # @subject.current_step = session[:subject_step]
    # @subject.next_step
    # session[:subject_step] = @subject.current_step
    # render 'new'

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
    (params[:step] == 'Back') ? @subject.previous_step : @subject.next_step
    if @subject.update_attributes(params[:subject])
      # redirect_to subject_path, :notice => 'update successfull'
      # @subject.next_step
       redirect_to subject_path, :notice => 'update successfull'
    else
      
      render @subject.reload.current_step, :notice => 'Is this what is happening?'
      
    end


    # session[:subject_params].deep_merge!(params[:subject])

    # @subject = Subject.find(params[:id])
    # @subject.current_step = session[:subject_step]
    # if params[:back_button]
    #   @subject.previous_step
    # else
    #   @subject.next_step
    # end
    # session[:subject_step] = @subject.current_step
    # render 'baseline'

    # respond_to do |format|
    #   if @subject.update_attributes(params[:subject])
    #     format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: "edit" }
    #     format.json { render json: @subject.errors, status: :unprocessable_entity }
    #   end

    # end

    # if @subject.update_attributes(params[:subject])
    #   flash[:success] = "Profile updated"
    #   sign_in @subject
    #   redirect_to @subject
    # else
    #   render 'edit'
    # end
  end

  # GET /subjects/1/screening
  def screening
    @subject = Subject.find(params[:subject_id])
  end

  def baseline
    @subject = Subject.find(params[:subject_id])
    session[:subject_params] ||= {}
  end

  def tc
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

  

  # def populate_values
  #   @subject_id = params[:subject_id]
  #   redirect_to screening_path(@subject_id)
  # end
end

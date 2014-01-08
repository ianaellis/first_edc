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
    # Update function for Baseline
    if @past_title = 'Baseline'
      session[:subject_params].deep_merge!(params[:subject]) if params[:subject_id]
      @subject = Subject.find(params[:id])
      @subject.current_step = session[:subject_step]
      if params[:back_button]
        @subject.previous_step
      else
        @subject.next_step
      end
      # Maintaines current position in array of steps
      session[:subject_step] = @subject.current_step

      if params[:submit_button]
        @subject.update_attributes(params[:subject])
        session[:subject_step] = session[:subject_params] = nil
        flash[:notice] = "Subject Information Saved"
        redirect_to subjects_url
      else
        @subject.update_attributes(params[:subject])
        render 'baseline'
        # flash[:notice] = "You are here!"
      end
    # Update function for Treatment Completion
    elsif @title = 'Treatment Completion'
      redirect_to subjects_path
    else

    end



    # For lack of a better method, I'm putting all of my update parameters in this function.
    # The Following is a working update method for Baseline, but nothing else.

    # session[:subject_params].deep_merge!(params[:subject]) if params[:subject_id]
    # @subject = Subject.find(params[:id])
    # @subject.current_step = session[:subject_step]
    # if params[:back_button]
    #   @subject.previous_step
    # else
    #   @subject.next_step
    # end
    # # Maintaines current position in array of steps
    # session[:subject_step] = @subject.current_step

    # if params[:submit_button]
    #   @subject.update_attributes(params[:subject])
    #   session[:subject_step] = session[:subject_params] = nil
    #   flash[:notice] = "Subject Information Saved"
    #   redirect_to subjects_url
    # else
    #   @subject.update_attributes(params[:subject])
    #   if @title = 'Baseline'
    #     render 'baseline'
    #     flash[:notice] = "You are here!"
    #   elsif @title = 'Treatment Completion'
    #     redurect_ti subjects_url
    #     flash[:notice] = "You are here!"
    #   end
    # end


    # respond_to do |format|
    #   if @subject.update_attributes(params[:subject])
    #     format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: "edit" }
    #     format.json { render json: @subject.errors, status: :unprocessable_entity }
    #   end

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


  

  # def populate_values
  #   @subject_id = params[:subject_id]
  #   redirect_to screening_path(@subject_id)
  # end
end

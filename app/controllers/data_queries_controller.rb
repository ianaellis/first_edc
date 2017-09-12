class DataQueriesController < ApplicationController
	def index
		@data_queries = DataQuery.all
	end

	def show
		@data_query = DataQuery.find(params[:id])
	end

	def new
		@data_query = DataQuery.new
	end

	def create
		@data_query = DataQuery.new(params[:data_query])
		if @data_query.save
			flash[:success] = "Query created."
			redirect_to @data_query
		else
			render 'new'
		end
	end

	def update
		@data_query = DataQuery.find(params[:id])
		if @data_query.update_attributes(params[:data_query])
			flash[:success] = "Query updated."
		else
			render 'edit'
		end
	end

	def edit
		@data_query = DataQuery.find(params[:id])
	end

	def destroy
		if current_user.is? :admin
		  @data_query = DataQuery.find(params[:id])
		  @data_query.destroy

		  respond_to do |format|
		    format.html { redirect_to @data_query }
		    format.json { head :no_content }
		  end
		end
	end

private
	def data_query_params
		params.require(:data_query).permit(:data_manager, :subject_id, :investigator_name, :crf_measure_number, :query_notes, :resolution_notes)
	end

end

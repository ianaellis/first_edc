class PsychosocialScalesController < ApplicationController
	def new
		@psychosocial_scale = PsychosocialScale.new
	end

	def show
		@psychosocial_scale = PsychosocialScale.find(params[:id])
	end

	def create
		@psychosocial_scale = PsychosocialScale.new(params[:psychosocial_scale])
		if @psychosocial_scale.save
			redirect_to @psychosocial_scale
		else
			render 'new'
		end
	end

	def update
		@psychosocial_scale = PsychosocialScale.find(params[:id])
		if @psychosocial_scale.update_attributes(params[:psychosocial_scale])
		  flash[:success] = "Psychosocial Scale Updated"
		  redirect_to subjects_url
		else
		  redirect_to subjects_url
		end
	end

end

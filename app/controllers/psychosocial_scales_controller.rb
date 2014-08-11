class PsychosocialScalesController < ApplicationController
	before_filter :authenticate_user!
	def new
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.new
		end
	end

	def show
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.find(params[:id])
		end
	end

	def create
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.new(params[:psychosocial_scale])
			if @psychosocial_scale.save
				redirect_to @psychosocial_scale
			else
				render 'new'
			end
		end
	end

	def update
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.find(params[:id])
			if @psychosocial_scale.update_attributes(params[:psychosocial_scale])
			  flash[:success] = "Psychosocial Scale Updated"
			  redirect_to subjects_url
			else
			  redirect_to subjects_url
			end
		end
	end

end

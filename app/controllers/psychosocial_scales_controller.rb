class PsychosocialScalesController < ApplicationController
	before_action :authenticate_user!

	def new
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.new
		end
	end

	def show
		if current_user.is? :vetpals_facilitator
			@psychosocial_scale = PsychosocialScale.find(params[:id])
		elsif current_user.is? :admin
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
		if current_user.is? :vetpals_facilitator or current_user.is? :admin
			@psychosocial_scale = PsychosocialScale.find(params[:id])
			if @psychosocial_scale.update_attributes!(psychosocial_scale_params)
			  flash[:success] = "Psychosocial Scale Updated"
			  redirect_to subjects_url
			else
			  redirect_to subjects_url
			end
		end
	end

private

	def psychosocial_scale_params
		params.require(:psychosocial_scale).permit(:subject_id, :psy_scale_ptcs_1, :psy_scale_ptcs_2, :psy_scale_ptcs_3, :psy_scale_ptcs_4, :psy_scale_ptcs_5, :psy_scale_ptcs_6, :psy_scale_ptcs_7, :psy_scale_ptcs_8, :psy_scale_ptcs_9, :psy_scale_ptcs_10, :psy_scale_ptcs_11, :psy_scale_ptcs_12, :psy_scale_ptcs_13, :psy_scale_ptcs_14, :psy_scale_ptcs_15, :psy_scale_ptcs_16, :psy_scale_ptcs_17, :psy_scale_sat_1, :psy_scale_sat_2, :psy_scale_sat_3, :psy_scale_sat_4, :psy_scale_sat_5, :psy_scale_sat_6, :psy_scale_sat_7, :psy_scale_sat_8, :psy_scale_sat_9, :psy_scale_sat_10, :psy_scale_sat_11)
	end


end

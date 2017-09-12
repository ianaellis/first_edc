class FollowUp6MonthsController < ApplicationController

	def new
		session[:followup6month_params] ||= {}
		@followup6month = FollowUp6Month.new(session[:followup6month_params])
		@followup6month.current_step = session[:followup6month_step]
	end

	def edit
		@followup6month = FollowUp6Month.find(params[:id])
	end

	def followup6month
		@followup6month = FollowUp6Month.find(params[:subject_id])
	end

	def show
		@followup6month = FollowUp6Month.find(params[:id])
	end


	def update
		session[:followup6month_params].deep_merge!(params[:followup6month]) if params[:followup6month_id]
		@followup6month = FollowUp6Month.find(params[:id])
		@followup6month.current_step = session[:followup6month_step]

		if params[:back_button]
	    	@followup6month.update_attributes(followup6month_params)
	      	@followup6month.previous_step
  	        session[:followup6month_step] = @followup6month.current_step
      		render "show"
	    elsif params[:next_button]
	    	@followup6month.update_attributes(followup6month_params)
	      	@followup6month.next_step
      	    session[:followup6month_step] = @followup6month.current_step
      		render "show"
	    elsif params[:submit_button]
	      if @followup6month.update_attributes(followup6month_params)
	        flash[:success] = "Treatment Completion Information Updated"
            session[:followup6month_step] = session[:followup6month_params] = nil
        	redirect_to subjects_url
	      else
	        flash[:notice] = "Did not save Treatment Completion, could not update attributes"
	        respond_to do |format|
          		format.html { render action: "show" }
          		format.json { render json: @baseline.errors, status: :unprocessable_entity }
        	end
	      end 
	    elsif params[:smfa_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "smfa"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:phq_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "phq"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:whoqol_bref_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "whoqol_bref"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:positive_negative_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "positive_negative"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:mses_self_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "mses_self"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:pam_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "pam"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:spsir_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "spsir"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:ssscq_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "ssscq"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:prosthesis_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "prosthesis"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:pain_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "pain"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:mspss_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "mspss"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:audit_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "audit"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    elsif params[:medical_review_link]
	      @followup6month.update_attributes(followup6month_params)
	      @followup6month.current_step = "medical_review"
	      session[:followup6month_step] = @followup6month.current_step
	      render "show"
	    end
	end

private
	def followup6month_params
		params.require(:followup6month).permit(:subject_id, :panas_present_moment_or_last_week, :fu6month_crf_status, :fu6month_smfa_1, :fu6month_smfa_2, :fu6month_smfa_3, :fu6month_smfa_4, :fu6month_smfa_5, :fu6month_smfa_6, :fu6month_smfa_7, :fu6month_smfa_8, :fu6month_smfa_9, :fu6month_smfa_10,   :fu6month_smfa_11,   :fu6month_smfa_12,   :fu6month_smfa_13,   :fu6month_smfa_14,   :fu6month_smfa_15,   :fu6month_smfa_16,   :fu6month_smfa_17,   :fu6month_smfa_18,   :fu6month_smfa_19,   :fu6month_smfa_20,   :fu6month_smfa_21,   :fu6month_smfa_22,   :fu6month_smfa_23,   :fu6month_smfa_24,   :fu6month_smfa_25,   :fu6month_smfa_26,   :fu6month_smfa_27,   :fu6month_smfa_28,   :fu6month_smfa_29,   :fu6month_smfa_30,   :fu6month_smfa_31,   :fu6month_smfa_32,   :fu6month_smfa_33,   :fu6month_smfa_34,   :fu6month_smfa_35,   :fu6month_smfa_36,   :fu6month_smfa_37,   :fu6month_smfa_38,   :fu6month_smfa_39,   :fu6month_smfa_40,   :fu6month_smfa_41,   :fu6month_smfa_42,   :fu6month_smfa_43,   :fu6month_smfa_44,   :fu6month_smfa_45,   :fu6month_smfa_46,   :fu6month_phq_1,  :fu6month_phq_2,  :fu6month_phq_3,  :fu6month_phq_4,  :fu6month_phq_5,  :fu6month_phq_6,  :fu6month_phq_7,  :fu6month_phq_8,  :fu6month_phq_9,  :fu6month_phq_10, :fu6month_whoqol_1,  :fu6month_whoqol_2,  :fu6month_panas_1,   :fu6month_panas_2,   :fu6month_panas_3,   :fu6month_panas_4,   :fu6month_panas_5,   :fu6month_panas_6,   :fu6month_panas_7,   :fu6month_panas_8,   :fu6month_panas_9,   :fu6month_panas_10,  :fu6month_panas_11,  :fu6month_panas_12,  :fu6month_panas_13,  :fu6month_panas_14,  :fu6month_panas_15,  :fu6month_panas_16,  :fu6month_panas_17,  :fu6month_panas_18,  :fu6month_panas_19,  :fu6month_panas_20,  :fu6month_mses_1, :fu6month_mses_2, :fu6month_mses_3, :fu6month_mses_4, :fu6month_mses_5, :fu6month_mses_6, :fu6month_mses_7, :fu6month_mses_8, :fu6month_mses_9, :fu6month_pam_1,  :fu6month_pam_2,  :fu6month_pam_3,  :fu6month_pam_4,  :fu6month_pam_5,  :fu6month_pam_6,  :fu6month_pam_7,  :fu6month_pam_8,  :fu6month_pam_9,  :fu6month_pam_10, :fu6month_pam_11, :fu6month_pam_12, :fu6month_pam_13, :fu6month_spsi_1, :fu6month_spsi_2, :fu6month_spsi_3, :fu6month_spsi_4, :fu6month_spsi_5, :fu6month_spsi_6, :fu6month_spsi_7, :fu6month_spsi_8, :fu6month_spsi_9, :fu6month_spsi_10,   :fu6month_spsi_11,   :fu6month_spsi_12,   :fu6month_spsi_13,   :fu6month_spsi_14,   :fu6month_spsi_15,   :fu6month_spsi_16,   :fu6month_spsi_17,   :fu6month_spsi_18,   :fu6month_spsi_19,   :fu6month_spsi_20,   :fu6month_spsi_21,   :fu6month_spsi_22,   :fu6month_spsi_23,   :fu6month_spsi_24,   :fu6month_spsi_25,   :fu6month_soc_1,  :fu6month_soc_2,  :fu6month_soc_3,  :fu6month_soc_4,  :fu6month_soc_5,  :fu6month_soc_6,  :fu6month_pu_1,   :fu6month_pu_2,   :fu6month_pu_3,   :fu6month_pu_4,   :fu6month_cpg_1,  :fu6month_cpg_2,  :fu6month_cpg_3,  :fu6month_cpg_4,  :fu6month_cpg_5,  :fu6month_cpg_6,  :fu6month_cpg_7,  :fu6month_comp_1, :fu6month_comp_2, :fu6month_comp_3, :fu6month_comp_4, :fu6month_comp_5_a1, :fu6month_comp_5_a2, :fu6month_comp_5_a3, :fu6month_comp_5_a4, :fu6month_comp_5_a5, :fu6month_comp_5_a6, :fu6month_comp_5_a7, :fu6month_comp_5b,   :fu6month_comp_5c,   :fu6month_comp_5c_level,   :fu6month_comp_5c_type, :fu6month_mspss_1,   :fu6month_mspss_2,   :fu6month_mspss_3,   :fu6month_mspss_4,   :fu6month_mspss_5,   :fu6month_mspss_6,   :fu6month_mspss_7,   :fu6month_mspss_8,   :fu6month_mspss_9,   :fu6month_mspss_10,  :fu6month_mspss_11,  :fu6month_mspss_12,  :fu6month_audit_1,   :fu6month_audit_2,   :fu6month_audit_3, :fu6month_fuq_2, :fu6month_fuq_3, :fu6month_fuq_4, :fu6month_fuq_4a_level, :fu6month_fuq_4a_type, :fu6month_fuq_5, :fu6month_fuq_6, :administration_method, :fu6month_ar_1, :fu6month_ar_2, :fu6month_ar_3, :fu6month_ar_4, :fu6month_ar_5, :fu6month_ar_6, :fu6month_ar_7, :fu6month_ar_8, :fu6month_ar_9, :fu6month_ar_9o, :fu6month_smoking_1, :fu6month_smoking_2, :fu6month_smoking_3, :fu6month_amp_side, :fu6month_fuq_2, :fu6month_fuq_2a, :fu6month_fuq_3, :fu6month_fuq_3a, :fu6month_fuq_4, :fu6month_fuq_4a_level, :fu6month_fuq_4a_type, :fu6month_fuq_4b, :fu6month_fuq_5, :fu6month_fuq_5a, :fu6month_fuq_6, :fu6month_fuq_6a, :fu6month_fuq_7, :fu6month_pu_2_bilateral_left, :fu6month_pu_3_bilateral_left)
	end
end

# OLD update
# if params[:back_button]
#   @followup6month.update_attributes(params[:followup6month])
#   @followup6month.previous_step
# else
#   @followup6month.update_attributes(params[:followup6month])
#   @followup6month.next_step
# end
# if params[:submit_button]
#   if @followup6month.update_attributes(params[:followup6month])
#     flash[:success] = "6 Month Follow Up Information Saved"
#   else
#     flash[:notice] = "Did not save followup6month, could not update attributes"
#   end
#   session[:followup6month_step] = session[:followup6month_params] = nil
#   redirect_to subjects_url
# else
#   session[:followup6month_step] = @followup6month.current_step
#   render "show"
# end
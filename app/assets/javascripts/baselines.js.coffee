# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#General Demographics
toggleBaseEmploymentStatus = ->
	if($("#baseline_base_employment_status_a").val() is "1")
		$("#base_employment_status").show()
	else
		$("#base_employment_status").hide()
	return

toggleBaseLivingStatus = ->
	if($("#baseline_base_living_status").val() is "5")
		$("#base_living_status").show()
	else
		$("#base_living_status").hide()
	return

#Prosthesis
toggleBaseProsthesis = ->
	if($("#baseline_base_pu_1").val() is "1")
		$("#base_prosthesis").show()
	else
		$("#base_prosthesis").hide()
	return

#Comorbidity
toggleBaseLEAR = ->
	
	if($("#baseline_base_cq_1b").val() is "1")
		$("#base_lear").show()
	else
		$("#base_lear").hide()
	return

toggleBaseJointReplacement = ->
	if($("#baseline_base_cq_1d").val() is "1")
		$("#base_joint").show()
	else
		$("#base_joint").hide()
	return

toggleBaseDiabetes = ->
	if($("#baseline_base_cq_2").val() is "1")
		$("#base_diabetes").show()
	else
		$("#base_diabetes").hide()
	return

toggleContralateralB = ->
	if($("#baseline_base_cq_10_a6").val() is "1")
		$("#base_contralateralB").show()
	else
		$("#base_contralateralB").hide()
	return

#PANAS
togglePanasTable = ->
	if($("#baseline_panas_present_moment_or_last_week").val() is "" or $("#baseline_panas_present_moment_or_last_week").val() is "1000"))
		$("#panas_table").hide()
	else
		$("#panas_table").show()
	return

#COWAT
toggleCowatTableSecondHalf = ->
	if($("#baseline_base_cowat_s_10").val() is "")
		$("#cowat_table_second_half").hide()
	else
		$("#cowat_table_second_half").show()
	return

#Audit-C
toggleBaseAlcohol = ->
	if($("#baseline_base_audit_1").val() is "0")
		$("#base_alcohol").hide()
	else if($("#baseline_base_audit_1").val() is "")
		$("#base_alcohol").hide()
	else
		$("#base_alcohol").show()
	return


jQuery ->
	$(document).ready ->
		#General Demographics
		toggleBaseEmploymentStatus()
		toggleBaseLivingStatus()
		#Prosthesis
		toggleBaseProsthesis()
		#Comorbidity
		toggleBaseLEAR()
		toggleBaseJointReplacement()
		toggleBaseDiabetes()
		toggleContralateralB()
		#PANAS
		togglePanasTable()
		toggleCowatTableSecondHalf()
		#Audit-C
		toggleBaseAlcohol()

		#General Demographics
		$("#baseline_base_employment_status_a").on "change", ->
			toggleBaseEmploymentStatus()
			return
		$("#baseline_base_living_status").on "change", ->
			toggleBaseLivingStatus()
			return

		#Prosthesis
		$("#baseline_base_pu_1").on "change", ->
			toggleBaseProsthesis()
			return

		#Comorbidity
		$("#baseline_base_cq_1b").on "change", ->
			toggleBaseLEAR()
			return

		$("#baseline_base_cq_1d").on "change", ->
			toggleBaseJointReplacement()
			return

		$("#baseline_base_cq_2").on "change", ->
			toggleBaseDiabetes()? 
			return

		$("#baseline_base_cq_a6").on "change", ->
			toggleContralateralB()
			return

		#PANAS
		$("#baseline_panas_present_moment_or_last_week").on "change", ->
			togglePanasTable()
			return

		#COWAT
		$("#baseline_base_cowat_s_10").on "change", ->
			toggleCowatTableSecondHalf()
			return

		#Audit-C
		$("#baseline_base_audit_1").on "change", ->
			toggleBaseAlcohol()
			return
		return
	return
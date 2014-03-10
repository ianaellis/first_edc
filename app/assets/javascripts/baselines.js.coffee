# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

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
	if($("#baseline_panas_present_moment_or_last_week").val() is "")
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

jQuery ->
	$(document).ready ->
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
		return
	return
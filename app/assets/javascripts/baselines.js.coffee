# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#General Demographics
toggleBaseEmploymentStatus = ->
	if($("#baseline_base_employment_status_a").val() is "0")
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

toggleBaseProsthesisBilateral = ->
	if($("#baseline_baseline_amp_side").val() is "3")
		$("#base_prosthesis_bilateral").show()

	else
		$("#base_prosthesis_bilateral").hide()
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
	if($("#baseline_panas_present_moment_or_last_week").val() is "" or $("#baseline_panas_present_moment_or_last_week").val() is "1000")
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

#Cognitive - RBANS List Learning
toggleRBANSListLearning = ->
	if($("#baseline_refuse_rbans_list").val() is "1000")
		$("#base_rbans_refused").hide()
	else
		$("#base_rbans_refused").show()
	return
toggleCWAT = ->
	if($("#baseline_refuse_cwat").val() is "1000")
		$("#base_cwat_refused").hide()
	else
		$("#base_cwat_refused").show()
	return
toggleWAIS1 = ->
	if($("#baseline_refuse_wais_1").val() is "1000")
		$("#base_wais1_refused").hide()
	else
		$("#base_wais1_refused").show()
	return
toggleWAIS2 = ->
	if($("#baseline_refuse_wais_2").val() is "1000")
		$("#base_wais2_refused").hide()
	else
		$("#base_wais2_refused").show()
	return
toggleRBANSListRecall = ->
	if($("#baseline_refuse_rbans_list_recall").val() is "1000")
		$("#base_rbans_recall_refused").hide()
	else
		$("#base_rbans_recall_refused").show()
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
		#Cognitive
		toggleRBANSListLearning()
		toggleCWAT()
		toggleWAIS1()
		toggleWAIS2()
		toggleRBANSListRecall()
		toggleBaseProsthesisBilateral()

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

		$("#baseline_baseline_amp_side").on "change", ->
			toggleBaseProsthesisBilateral()
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

		#Cognitive
		$("#baseline_refuse_rbans_list").on "change", ->
			toggleRBANSListLearning()
			return
		$("#baseline_refuse_cwat").on "change", ->
			toggleCWAT()
			return
		$("#baseline_refuse_wais_1").on "change", ->
			toggleWAIS1()
			return
		$("#baseline_refuse_wais_2").on "change", ->
			toggleWAIS2()
			return
		$("#baseline_refuse_rbans_list_recall").on "change", ->
			toggleRBANSListRecall()
			return
		return
	return

#FCI

fci_PIC_1 = ->
	if($("#baseline_base_arthritis").val() is "0")
		$("#base_PIC_1").show()
	else
		$("#base_PIC_1").hide()
	return
fci_PIC_2 = ->
	if($("#baseline_base_osteoporosis").val() is "0")
		$("#base_PIC_2").show()
	else
		$("#base_PIC_2").hide()
	return
fci_PIC_3 = ->
	if($("#baseline_base_asthma").val() is "0")
		$("#base_PIC_3").show()
	else
		$("#base_PIC_3").hide()
	return
fci_PIC_4 = ->
	if($("#baseline_base_copd").val() is "0")
		$("#base_PIC_4").show()
	else
		$("#base_PIC_4").hide()
	return
fci_PIC_5 = ->
	if($("#baseline_base_angina").val() is "0")
		$("#base_PIC_5").show()
	else
		$("#base_PIC_5").hide()
	return
fci_PIC_6 = ->
	if($("#baseline_base_heart").val() is "0")
		$("#base_PIC_6").show()
	else
		$("#base_PIC_6").hide()
	return
fci_PIC_7 = ->
	if($("#baseline_base_heart_attack").val() is "0")
		$("#base_PIC_7").show()
	else
		$("#base_PIC_7").hide()
	return
fci_PIC_8 = ->
	if($("#baseline_base_neuro").val() is "0")
		$("#base_PIC_8").show()
	else
		$("#base_PIC_8").hide()
	return
fci_PIC_9 = ->
	if($("#baseline_base_stroke").val() is "0")
		$("#base_PIC_9").show()
	else
		$("#base_PIC_9").hide()
	return
fci_PIC_10 = ->
	if($("#baseline_base_pvd").val() is "0")
		$("#base_PIC_10").show()
	else
		$("#base_PIC_10").hide()
	return
fci_PIC_11 = ->
	if($("#baseline_base_diabetes").val() is "0")
		$("#base_PIC_11").show()
	else
		$("#base_PIC_11").hide()
	return
fci_PIC_12 = ->
	if($("#baseline_base_gastrointestinal").val() is "0")
		$("#base_PIC_12").show()
	else
		$("#base_PIC_12").hide()
	return
fci_PIC_13 = ->
	if($("#baseline_base_depression").val() is "0")
		$("#base_PIC_13").show()
	else
		$("#base_PIC_13").hide()
	return
fci_PIC_14 = ->
	if($("#baseline_base_anxiety").val() is "0")
		$("#base_PIC_14").show()
	else
		$("#base_PIC_14").hide()
	return
fci_PIC_15 = ->
	if($("#baseline_base_visual_impairment").val() is "0")
		$("#base_PIC_15").show()
	else
		$("#base_PIC_15").hide()
	return
fci_PIC_16 = ->
	if($("#baseline_base_hearing_impairment").val() is "0")
		$("#base_PIC_16").show()
	else
		$("#base_PIC_16").hide()
	return
fci_PIC_17 = ->
	if($("#baseline_base_ddd").val() is "0")
		$("#base_PIC_17").show()
	else
		$("#base_PIC_17").hide()
	return
fci_PIC_18 = ->
	if($("#baseline_base_obese").val() is "0")
		$("#base_PIC_18").show()
	else
		$("#base_PIC_18").hide()
	return


jQuery ->
	$(document).ready ->
		fci_PIC_1()
		fci_PIC_2()
		fci_PIC_3()
		fci_PIC_4()
		fci_PIC_5()
		fci_PIC_6()
		fci_PIC_7()
		fci_PIC_8()
		fci_PIC_9()
		fci_PIC_10()
		fci_PIC_11()
		fci_PIC_12()
		fci_PIC_13()
		fci_PIC_14()
		fci_PIC_15()
		fci_PIC_16()
		fci_PIC_17()
		fci_PIC_18()


		$("#baseline_base_arthritis").on "change", ->
			fci_PIC_1()
			return
		$("#baseline_base_osteoporosis").on "change", ->
			fci_PIC_2()
			return
		$("#baseline_base_asthma").on "change", ->
			fci_PIC_3()
			return
		$("#baseline_base_copd").on "change", ->
			fci_PIC_4()
			return
		$("#baseline_base_angina").on "change", ->
			fci_PIC_5()
			return
		$("#baseline_base_heart").on "change", ->
			fci_PIC_6()
			return
		$("#baseline_base_heart_attack").on "change", ->
			fci_PIC_7()
			return
		$("#baseline_base_neuro").on "change", ->
			fci_PIC_8()
			return
		$("#baseline_base_stroke").on "change", ->
			fci_PIC_9()
			return
		$("#baseline_base_pvd").on "change", ->
			fci_PIC_10()
			return
		$("#baseline_base_diabetes").on "change", ->
			fci_PIC_11()
			return
		$("#baseline_base_gastrointestinal").on "change", ->
			fci_PIC_12()
			return
		$("#baseline_base_depression").on "change", ->
			fci_PIC_13()
			return
		$("#baseline_base_anxiety").on "change", ->
			fci_PIC_14()
			return
		$("#baseline_base_visual_impairment").on "change", ->
			fci_PIC_15()
			return
		$("#baseline_base_hearing_impairment").on "change", ->
			fci_PIC_16()
			return
		$("#baseline_base_ddd").on "change", ->
			fci_PIC_17()
			return
		$("#baseline_base_obese").on "change", ->
			fci_PIC_18()
			return
		return
	return

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

toggleTCRevision = ->
	if ($("#tc_tc_fuq_2").val() is "1")
		$("#tc_revision").show()
	else
		$("#tc_revision").hide()
	return

toggleTCRevisionHigher = ->
	if ($("#tc_tc_fuq_3").val() is "1")
		$("#tc_revision_higher").show()
	else
		$("#tc_revision_higher").hide()
	return

toggleTCContra = ->
	if ($("#tc_tc_fuq_4").val() is "1")
		$("#tc_contra").show()
	else
		$("#tc_contra").hide()
	return

toggleTCHospital = ->
	if ($("#tc_tc_fuq_5").val() is "1")
		$("#tc_hospital").show()
	else
		$("#tc_hospital").hide()
	return

toggleTCPassed = ->
	if ($("#tc_tc_fuq_6").val() is "1")
		$("#tc_passed").show()
	else
		$("#tc_passed").hide()
	return

#PANAS
togglePanasTable = ->
	if($("#tc_panas_present_moment_or_last_week").val() is "" or $("#tc_panas_present_moment_or_last_week").val() is "1000")
		$("#tc_panas_table").hide()
	else
		$("#tc_panas_table").show()
	return

#Prosthesis
toggleTCProsthesis = ->
	if($("#tc_tc_pu_1").val() is "1")
		$("#tc_prosthesis").show()
	else
		$("#tc_prosthesis").hide()
	return

#Audit
toggleTCAlcohol = ->
	if($("#tc_tc_audit_1").val() is "0" or $("#tc_tc_audit_1").val() is "")
		$("#tc_alcohol").hide()
	else
		$("#tc_alcohol").show()
	return


jQuery ->
	$(document).ready ->
		toggleTCRevision()
		toggleTCRevisionHigher()
		toggleTCContra()
		toggleTCHospital()
		toggleTCPassed()
		togglePanasTable()
		toggleTCProsthesis()
		toggleTCAlcohol()

		$("#tc_tc_fuq_2").on "change", ->
			toggleTCRevision()
			return

		$("#tc_tc_fuq_3").on "change", ->
			toggleTCRevisionHigher()
			return

		$("#tc_tc_fuq_4").on "change", ->
			toggleTCContra()
			return

		$("#tc_tc_fuq_5").on "change", ->
			toggleTCHospital()
			return

		$("#tc_tc_fuq_6").on "change", ->
			toggleTCPassed()
			return

		#PANAS
		$("#tc_panas_present_moment_or_last_week").on "change", ->
			togglePanasTable()
			return

		$("#tc_tc_pu_1").on "change", ->
			toggleTCProsthesis()
			return

		#Audit
		$("#tc_tc_audit_1").on "change", ->
			toggleTCAlcohol()
			return
		return
	return

#6week Review

toggle6WRevision = ->
	if ($("#tc_tc_fuq_2").val() is "1")
		$("#tc_revision").show()
	else
		$("#tc_revision").hide()
	return

toggle6WRevisionHigher = ->
	if ($("#tc_tc_fuq_3").val() is "1")
		$("#tc_revision_higher").show()
	else
		$("#tc_revision_higher").hide()
	return

toggle6WContra = ->
	if ($("#tc_tc_fuq_4").val() is "1")
		$("#tc_contra").show()
	else
		$("#tc_contra").hide()
	return

toggle6WHospital = ->
	if ($("#tc_tc_fuq_5").val() is "1")
		$("#tc_hospital").show()
	else
		$("#tc_hospital").hide()
	return

toggle6WPassed = ->
	if ($("#tc_tc_fuq_6").val() is "1")
		$("#tc_passed").show()
	else
		$("#tc_passed").hide()
	return

#Prosthesis
toggleTCProsthesis = ->
	if($("#tc_tc_pu_1").val() is "1")
		$("#tc_prosthesis").show()
	else
		$("#tc_prosthesis").hide()
	return


toggleTCProsthesisBilateral = ->
	if ($("#tc_tc_amp_side").val() is "3")
		$("#tc_prosthesis_bilateral").show()
	else
		$("#tc_prosthesis_bilateral").hide()
	return
	

jQuery ->
	$(document).ready ->
		toggle6WRevision()
		toggle6WRevisionHigher()
		toggle6WContra()
		toggle6WHospital()
		toggle6WPassed()
		toggleTCProsthesisBilateral()
		toggleTCProsthesis()

		$("#tc_tc_fuq_2").on "change", ->
			toggle6WRevision()
			return

		$("#tc_tc_fuq_3").on "change", ->
			toggle6WRevisionHigher()
			return

		$("#tc_tc_fuq_4").on "change", ->
			toggle6WContra()
			return

		$("#tc_tc_fuq_5").on "change", ->
			toggle6WHospital()
			return

		$("#tc_tc_fuq_6").on "change", ->
			toggle6WPassed()
			return

		$("#tc_tc_tc_pu_1").on "change", ->
			toggleTCProsthesis()
			return

		$("#tc_tc_amp_side").on "change", ->
			toggleTCProsthesisBilateral()
			return
		return
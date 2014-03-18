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



jQuery ->
	$(document).ready ->
		toggleTCRevision()
		toggleTCRevisionHigher()
		toggleTCContra()
		toggleTCHospital()
		toggleTCPassed()

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
		return
	return

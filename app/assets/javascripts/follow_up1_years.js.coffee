# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

togglefollowup1yearRevision = ->
	if ($("#followup1year_fu1year_fuq_2").val() is "1")
		$("#followup1year_revision").show()
	else
		$("#followup1year_revision").hide()
	return

togglefollowup1yearRevisionHigher = ->
	if ($("#followup1year_fu1year_fuq_3").val() is "1")
		$("#followup1year_revision_higher").show()
	else
		$("#followup1year_revision_higher").hide()
	return

togglefollowup1yearContra = ->
	if ($("#followup1year_fu1year_fuq_4").val() is "1")
		$("#followup1year_contra").show()
	else
		$("#followup1year_contra").hide()
	return

togglefollowup1yearHospital = ->
	if ($("#followup1year_fu1year_fuq_5").val() is "1")
		$("#followup1year_hospital").show()
	else
		$("#followup1year_hospital").hide()
	return

togglefollowup1yearPassed = ->
	if ($("#followup1year_fu1year_fuq_6").val() is "1")
		$("#followup1year_passed").show()
	else
		$("#followup1year_passed").hide()
	return



jQuery ->
	$(document).ready ->
		togglefollowup1yearRevision()
		togglefollowup1yearRevisionHigher()
		togglefollowup1yearContra()
		togglefollowup1yearHospital()
		togglefollowup1yearPassed()

		$("#followup1year_fu1year_fuq_2").on "change", ->
			togglefollowup1yearRevision()
			return

		$("#followup1year_fu1year_fuq_3").on "change", ->
			togglefollowup1yearRevisionHigher()
			return

		$("#followup1year_fu1year_fuq_4").on "change", ->
			togglefollowup1yearContra()
			return

		$("#followup1year_fu1year_fuq_5").on "change", ->
			togglefollowup1yearHospital()
			return

		$("#followup1year_fu1year_fuq_6").on "change", ->
			togglefollowup1yearPassed()
			return
		return
	return
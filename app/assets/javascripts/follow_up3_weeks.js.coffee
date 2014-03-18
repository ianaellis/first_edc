# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

togglefollowup3weekRevision = ->
	if ($("#followup3week_fu3week_fuq_2").val() is "1")
		$("#followup3week_revision").show()
	else
		$("#followup3week_revision").hide()
	return

togglefollowup3weekRevisionHigher = ->
	if ($("#followup3week_fu3week_fuq_3").val() is "1")
		$("#followup3week_revision_higher").show()
	else
		$("#followup3week_revision_higher").hide()
	return

togglefollowup3weekContra = ->
	if ($("#followup3week_fu3week_fuq_4").val() is "1")
		$("#followup3week_contra").show()
	else
		$("#followup3week_contra").hide()
	return

togglefollowup3weekHospital = ->
	if ($("#followup3week_fu3week_fuq_5").val() is "1")
		$("#followup3week_hospital").show()
	else
		$("#followup3week_hospital").hide()
	return

togglefollowup3weekPassed = ->
	if ($("#followup3week_fu3week_fuq_6").val() is "1")
		$("#followup3week_passed").show()
	else
		$("#followup3week_passed").hide()
	return



jQuery ->
	$(document).ready ->
		togglefollowup3weekRevision()
		togglefollowup3weekRevisionHigher()
		togglefollowup3weekContra()
		togglefollowup3weekHospital()
		togglefollowup3weekPassed()

		$("#followup3week_fu3week_fuq_2").on "change", ->
			togglefollowup3weekRevision()
			return

		$("#followup3week_fu3week_fuq_3").on "change", ->
			togglefollowup3weekRevisionHigher()
			return

		$("#followup3week_fu3week_fuq_4").on "change", ->
			togglefollowup3weekContra()
			return

		$("#followup3week_fu3week_fuq_5").on "change", ->
			togglefollowup3weekHospital()
			return

		$("#followup3week_fu3week_fuq_6").on "change", ->
			togglefollowup3weekPassed()
			return
		return
	return
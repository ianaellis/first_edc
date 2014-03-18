# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

togglefollowup18weekRevision = ->
	if ($("#followup18week_fu18week_fuq_2").val() is "1")
		$("#followup18week_revision").show()
	else
		$("#followup18week_revision").hide()
	return

togglefollowup18weekRevisionHigher = ->
	if ($("#followup18week_fu18week_fuq_3").val() is "1")
		$("#followup18week_revision_higher").show()
	else
		$("#followup18week_revision_higher").hide()
	return

togglefollowup18weekContra = ->
	if ($("#followup18week_fu18week_fuq_4").val() is "1")
		$("#followup18week_contra").show()
	else
		$("#followup18week_contra").hide()
	return

togglefollowup18weekHospital = ->
	if ($("#followup18week_fu18week_fuq_5").val() is "1")
		$("#followup18week_hospital").show()
	else
		$("#followup18week_hospital").hide()
	return

togglefollowup18weekPassed = ->
	if ($("#followup18week_fu18week_fuq_6").val() is "1")
		$("#followup18week_passed").show()
	else
		$("#followup18week_passed").hide()
	return



jQuery ->
	$(document).ready ->
		togglefollowup18weekRevision()
		togglefollowup18weekRevisionHigher()
		togglefollowup18weekContra()
		togglefollowup18weekHospital()
		togglefollowup18weekPassed()

		$("#followup18week_fu18week_fuq_2").on "change", ->
			togglefollowup18weekRevision()
			return

		$("#followup18week_fu18week_fuq_3").on "change", ->
			togglefollowup18weekRevisionHigher()
			return

		$("#followup18week_fu18week_fuq_4").on "change", ->
			togglefollowup18weekContra()
			return

		$("#followup18week_fu18week_fuq_5").on "change", ->
			togglefollowup18weekHospital()
			return

		$("#followup18week_fu18week_fuq_6").on "change", ->
			togglefollowup18weekPassed()
			return
		return
	return
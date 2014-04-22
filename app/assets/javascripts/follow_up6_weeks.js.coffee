# Place all the behaviors and hooks related to the mafu6weekhing controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

toggle6WRevision = ->
	if ($("#followup6week_fu6week_fuq_2").val() is "1")
		$("#fu6week_revision").show()
	else
		$("#fu6week_revision").hide()
	return

toggle6WRevisionHigher = ->
	if ($("#followup6week_fu6week_fuq_3").val() is "1")
		$("#fu6week_revision_higher").show()
	else
		$("#fu6week_revision_higher").hide()
	return

toggle6WContra = ->
	if ($("#followup6week_fu6week_fuq_4").val() is "1")
		$("#fu6week_contra").show()
	else
		$("#fu6week_contra").hide()
	return

toggle6WHospital = ->
	if ($("#followup6week_fu6week_fuq_5").val() is "1")
		$("#fu6week_hospital").show()
	else
		$("#fu6week_hospital").hide()
	return

toggle6WPassed = ->
	if ($("#followup6week_fu6week_fuq_6").val() is "1")
		$("#fu6week_passed").show()
	else
		$("#fu6week_passed").hide()
	return

jQuery ->
	$(document).ready ->
		toggle6WRevision()
		toggle6WRevisionHigher()
		toggle6WContra()
		toggle6WHospital()
		toggle6WPassed()

		$("#followup6week_fu6week_fuq_2").on "change", ->
			toggle6WRevision()
			return

		$("#followup6week_fu6week_fuq_3").on "change", ->
			toggle6WRevisionHigher()
			return

		$("#followup6week_fu6week_fuq_4").on "change", ->
			toggle6WContra()
			return

		$("#followup6week_fu6week_fuq_5").on "change", ->
			toggle6WHospital()
			return

		$("#followup6week_fu6week_fuq_6").on "change", ->
			toggle6WPassed()
			return
		return
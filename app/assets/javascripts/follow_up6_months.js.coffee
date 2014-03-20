# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#PANAS
togglePanasTable = ->
	if($("#followup6month_panas_present_moment_or_last_week").val() is "" or $("#followup6month_panas_present_moment_or_last_week").val() is "1000")
		$("#6m_panas_table").hide()
	else
		$("#6m_panas_table").show()
	return

#Prosthesis
toggle6MProsthesis = ->
	if($("#followup6month_fu6month_pu_1").val() is "1")
		$("#6m_prosthesis").show()
	else
		$("#6m_prosthesis").hide()
	return

#Audit
toggle6MAlcohol = ->
	if($("#followup6month_fu6month_audit_1").val() is "0" or $("#followup6month_fu6month_audit_1").val() is "")
		$("#fu6month_alcohol").hide()
	else
		$("#fu6month_alcohol").show()
	return

jQuery ->
	$(document).ready ->
		togglePanasTable()
		toggle6MProsthesis()
		toggle6MAlcohol()

		#PANAS
		$("#followup6month_panas_present_moment_or_last_week").on "change", ->
			togglePanasTable()
			return

		$("#followup6month_fu6month_pu_1").on "change", ->
			toggle6MProsthesis()
			return
		$("#followup6month_fu6month_audit_1").on "change", ->
			toggle6MAlcohol()
			return
		return
	return


# Complications

togglefollowup6monthRevision = ->
	if ($("#followup6month_fu6month_fuq_2").val() is "1")
		$("#followup6month_revision").show()
	else
		$("#followup6month_revision").hide()
	return

togglefollowup6monthRevisionHigher = ->
	if ($("#followup6month_fu6month_fuq_3").val() is "1")
		$("#followup6month_revision_higher").show()
	else
		$("#followup6month_revision_higher").hide()
	return

togglefollowup6monthContra = ->
	if ($("#followup6month_fu6month_fuq_4").val() is "1")
		$("#followup6month_contra").show()
	else
		$("#followup6month_contra").hide()
	return

togglefollowup6monthHospital = ->
	if ($("#followup6month_fu6month_fuq_5").val() is "1")
		$("#followup6month_hospital").show()
	else
		$("#followup6month_hospital").hide()
	return

togglefollowup6monthPassed = ->
	if ($("#followup6month_fu6month_fuq_6").val() is "1")
		$("#followup6month_passed").show()
	else
		$("#followup6month_passed").hide()
	return



jQuery ->
	$(document).ready ->
		togglefollowup6monthRevision()
		togglefollowup6monthRevisionHigher()
		togglefollowup6monthContra()
		togglefollowup6monthHospital()
		togglefollowup6monthPassed()

		$("#followup6month_fu6month_fuq_2").on "change", ->
			togglefollowup6monthRevision()
			return

		$("#followup6month_fu6month_fuq_3").on "change", ->
			togglefollowup6monthRevisionHigher()
			return

		$("#followup6month_fu6month_fuq_4").on "change", ->
			togglefollowup6monthContra()
			return

		$("#followup6month_fu6month_fuq_5").on "change", ->
			togglefollowup6monthHospital()
			return

		$("#followup6month_fu6month_fuq_6").on "change", ->
			togglefollowup6monthPassed()
			return
		return
	return
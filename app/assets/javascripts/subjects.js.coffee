# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

####
# Editing Subject page.
####
toggleEnrolled = ->
		if ($("#subject_enrolled").val() is "0")
	        $("#subject_reason_not_enrolled").toggle()
	        $("#not_enrolled").show()    
	    else
	    	$("#subject_reason_not_enrolled").hide()
	    	$("#not_enrolled").hide()
		return
toggleEnrolledOther = ->
		if ($("#subject_reason_not_enrolled").val() is "5")
			$("#subject_reason_not_enrolled_other").show()
		else
			$("#subject_reason_not_enrolled_other").hide()
		return

jQuery ->
	$(document).ready ->
		toggleEnrolled()
		toggleEnrolledOther()
		$("#subject_enrolled").on "change", ->
			toggleEnrolled()
			return
		$("#subject_reason_not_enrolled").on "change", ->
			toggleEnrolledOther()
			return
		return
	return

####
# Screening CRF - subjects/:id/Screening
####

toggleStreetAddress = ->
	if ($("#subject_sc_smpsq_4").val() is "0")
		$("#screen_street_address").show()
	else
		$("#screen_street_address").hide()
	return

toggleAmpSurg = ->
	if ($("#subject_sc_inc_2").val() is "1")
		$("#screen_ampsurg").show()
	else
		$("#screen_ampsurg").hide()
	return

toggleRaceOther = ->
	if ($("#subject_sc_pd_4").val() is "6")
		$("#screen_race_other").show()
	else
		$("#screen_race_other").hide()
	return

toggleWaiverGranted = ->
	if ($("#subject_sc_pe_4").val() is "1")
		$("#screen_waiver_granted").show()
	else
		$("#screen_waiver_granted").hide()
	return

toggleIneligible = ->
	if ($("#subject_sc_pe_3").val() is "2")
		$("#screen_ineligible").show()
	else
		$("#screen_ineligible").hide()
	return

toggleIneligibleOther = ->
	if($("#subject_sc_pe_5").val() is "7")
		$("#screen_ineligible_other").show()
	else
		$("#screen_ineligible_other").hide()
	return

toggleInformedConsent = ->
	if($("#subject_sc_pe_1").val() is "1"  and $("#subject_sc_pe_2").val() is "2")
		$("#informed_consent").show()
	else
		$("#informed_consent").hide()
	return
jQuery ->
	$(document).ready ->
		toggleStreetAddress()
		toggleAmpSurg()
		toggleRaceOther()
		toggleWaiverGranted()
		toggleIneligible()
		toggleIneligibleOther()
		toggleInformedConsent()

		$("#subject_sc_smpsq_4").on "change", ->
			toggleStreetAddress()
			return

		$("#subject_sc_inc_2").on "change", ->
			toggleAmpSurg()
			return

		$("#subject_sc_pd_4").on "change", ->
			toggleRaceOther()
			return

		$("#subject_sc_pe_4").on "change", ->
			toggleWaiverGranted()
			return

		$("#subject_sc_pe_3").on "change", ->
			toggleIneligible()
			return
		$("#subject_sc_pe_5").on "change", ->
			toggleIneligibleOther()
			return
		$("#subject_sc_pe_1").on "change", ->
			toggleInformedConsent()
			return
		$("#subject_sc_pe_2").on "change", ->
			toggleInformedConsent()
			return	
		return
	return
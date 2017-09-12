# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/$
#
# This Table is used for All Participants and for the Screening Table
jQuery ->
	$('#all_participant_table').DataTable({"pagingType": "full_numbers"});
	$('#screening_log').DataTable({
		"sScrollX": "100%",
		"sScrollXInner": "100%",
		"bScrollCollapse": true
		});



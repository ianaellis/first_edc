# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#all_participant_table').dataTable({"sPaginationType": "bootstrap"});
	$('#screening_log').dataTable({
		"sScrollX": "100%",
		"sScrollXInner": "100%",
		"bScrollCollapse": true
		"sPaginationType": "bootstrap"
		});
	# $('#all_subjects').dataTable({"sPaginationType": "bootstrap"});
	# $('#screening_crf_data').dataTable({
	# 	"sScrollX": "100%",
	# 	"sScrollXInner": "300%",
	# 	"bScrollCollapse": true
	# 	"sPaginationType": "bootstrap"
	# 	});



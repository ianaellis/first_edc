# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Created by jankoatwarpspeed.com 

# $("select").change(->
  
#   $("select option:selected").val ->
    
#     return

#   $("div").text str
#   return
# ).trigger "change"

jQuery ->
    $(
        if ($('#subject_enrolled').val() == '0')
            $('#subject_reason_not_enrolled').show()
        else
        	$('#subject_reason_not_enrolled').hide()
    ).change()


# $("select").change(->
# 	if ($('#subject_enrolled').val() == '0')
#         $('#subject_reason_not_enrolled').show()
#         return
#     else
#     	$('#subject_reason_not_enrolled').hide();
#     	return
#     ).change()
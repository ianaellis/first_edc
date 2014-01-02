(($) ->
  $.fn.formToWizard = (options) ->
    
    # 2
    
    # 2
    createPrevButton = (i) ->
      stepName = "step" + i
      $("#" + stepName + "commands").append "<a href='#' id='" + stepName + "Prev' class='prev'>< Back</a>"
      $("#" + stepName + "Prev").bind "click", (e) ->
        $("#" + stepName).hide()
        $("#step" + (i - 1)).show()
        $(submmitButtonName).hide()
        selectStep i - 1

    createNextButton = (i) ->
      stepName = "step" + i
      $("#" + stepName + "commands").append "<a href='#' id='" + stepName + "Next' class='next'>Next ></a>"
      $("#" + stepName + "Next").bind "click", (e) ->
        $("#" + stepName).hide()
        $("#step" + (i + 1)).show()
        $(submmitButtonName).show()  if i + 2 is count
        selectStep i + 1

    selectStep = (i) ->
      $("#steps li").removeClass "current"
      $("#stepDesc" + i).addClass "current"
    options = $.extend(
      submitButton: ""
    , options)
    element = this
    steps = $(element).find("fieldset")
    count = steps.size()
    submmitButtonName = "#" + options.submitButton
    $(submmitButtonName).hide()
    $(element).before "<ul id='steps'></ul>"
    steps.each (i) ->
      $(this).wrap "<div id='step" + i + "'></div>"
      $(this).append "<p id='step" + i + "commands'></p>"
      name = $(this).find("legend").html()
      $("#steps").append "<li id='stepDesc" + i + "'>Step " + (i + 1) + "<span>" + name + "</span></li>"
      if i is 0
        createNextButton i
        selectStep i
      else if i is count - 1
        $("#step" + i).hide()
        createPrevButton i
      else
        $("#step" + i).hide()
        createPrevButton i
        createNextButton i

) jQuery
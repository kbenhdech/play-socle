define ['../main', 'bootstrap-datetimepicker', 'webjars!js/locales/bootstrap-datetimepicker.fr.js', 'css!bootstrap-datetimepicker-css'], () ->

  datetimepickerDateAndTime: (id) ->
    $(id).datetimepicker
      format: 'dd/mm/yyyy hh:ii'
      daysOfWeekDisabled: [0,6]
      startView: 2
      minView: 0 # Précision Minutes
      maxView:3  # Précision Mois
      language: "fr"
      weekStart: 1
      autoclose: true
      todayBtn: true
      todayHighlight: true
      minuteStep: 15

  datetimepickerDate: (id) ->
    $(id).datetimepicker
      format : 'dd/mm/yyyy'
      daysOfWeekDisabled: [0,6]
      startView: 2
      minView: 2 # Précision Jours
      maxView: 3 # Précision Mois
      language: "fr"
      weekStart: 1
      autoclose: true
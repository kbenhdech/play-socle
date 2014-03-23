define ['../main', 'fullcalendar', 'css!fullcalendar-css'], () ->

  # Initialisation du calendrier
  # @param options  Paramètres du calendrier, notamment les actions déclenchées par des évenements
  init: (options) ->
    # Initialisation du plugin
    $(options.id).fullCalendar(
      # General Display
      header:
        left:   'title'
        center: 'month,agendaWeek,agendaDay'
        right:  'prev,today,next'
      firstDay: 1
      weekends: true
      weekMode: "liquid"
      weekNumbers: true
      aspectRatio: 1
    # View
      defaultView: 'agendaWeek'
    # Agenda Options
      allDaySlot: false
      allDayDefault: false
      slotMinutes: 15
      minTime: 8 # Heure de début du calendrier
      maxTime: 20 # Heure de fin du calendrier
      axisFormat: "HH:00"
      slotEventOverlap: false # Evite la superposition visuelle d'évenements
    # Text/Time Customization
      timeFormat:
        agenda: 'HH:mm{ - HH:mm}'
        '': 'h(:mm)'
      columnFormat:
        month: 'ddd',
        week: 'ddd d/M',
        day: 'dddd d/M'
      titleFormat:
        month: 'MMMM yyyy'
        week: "d MMMM[ yyyy]{ 'au' d MMMM yyyy}"
        day: 'dddd d MMM yyyy'
      buttonText:
        prev:     '&lsaquo;' # <
        next:     '&rsaquo;' # >
        prevYear: '&laquo;'  # <<
        nextYear: '&raquo;'  # >>
        today:    'Aujourd\'hui'
        month:    'Mois',
        week:     'Semaine',
        day:      'Jour'
      monthNames: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet','Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre']
      monthNamesShort: ['Jan', 'Fev', 'Mar', 'Avr', 'Mai', 'Juin', 'Juil', 'Aoû', 'Sep', 'Oct', 'Nov', 'Dec']
      dayNames: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi','Jeudi', 'Vendredi', 'Samedi']
      dayNamesShort: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi']
      weekNumberTitle: "S"
    # Evant Data
      eventSources: options.eventSources
      editable: options.editable || false
      selectable: options.selectable || false
      selectHelper: options.selectHelper || false
      select: (start, end, allDay) ->
        options.select(start, end, allDay) || () ->
      eventDrop: (event,dayDelta,minuteDelta,allDay,revertFunc) ->
        options.eventDrop(event,dayDelta,minuteDelta,allDay,revertFunc) || () ->
      eventResize: (event,dayDelta,minuteDelta,allDay,revertFunc) ->
        options.eventResize(event,dayDelta,minuteDelta,allDay,revertFunc) || () ->
      eventClick: (event, jsEvent, view) ->
        options.eventClick(event, jsEvent, view) || () ->
      loading: (isLoading) ->
        options.loading(isLoading) || () ->
      eventAfterAllRender: () ->
        options.eventAfterAllRender() || () ->
    )
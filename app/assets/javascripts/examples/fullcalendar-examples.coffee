require ['../main', '../utils/fullcalendar-utils'], (main, fullcalenarUtils) ->

  eventSources = () ->
		[
			# Les réservations de salles pour une session
			# TODO Mettre une URL
			url: "/toto"
			type: 'POST'
			color: 'black' # Par défaut
			textColor: 'white' # Par défaut
			#data:
			error: () ->
			  alert("La récupération du feed a échouée !")
		]

  fullcalenarUtils.init(
    id: "#fullcalendar"
    eventSources: eventSources
    editable: true
    selectable: true
    selectHelper: true
    aspectRatio: 0.7
    select: (start, end, allDay) ->
    eventDrop: (event, dayDelta, minuteDelta, allDay, revertFunc) ->
    eventResize: (event, dayDelta, minuteDelta, revertFunc, allDay) ->
    eventClick: (event, jsEvent, view) ->
    loading: (isLoading) ->
    eventAfterAllRender: () ->
  )
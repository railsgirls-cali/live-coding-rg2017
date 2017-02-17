window.RG =
  calendar:
    index:
      setup: ->
        selectableConfig =
          timeFormat: 'H(:mm)'
          selectable: true
          selectHelper: true
          select: (start, end) ->
            todayDate = new Date();
            todayDate.setHours(0,0,0,0);
            if start < todayDate
              $('#appointmentsContainer').fullCalendar 'unselect'
              return
            $.ajax
              type: "GET"
              url: "/appointments/#{$fullCalendar.data('client')}/new"
              data: "starts_at=#{start.format()}&ends_at=#{end.format()}"
            return
        $fullCalendar = $('#appointmentsContainer')
        $fullCalendar.fullCalendar Object.assign(RG.calendar.defaultFullcalendarConfig("/appointments.json"), selectableConfig)
    defaultFullcalendarConfig: (events_url)->
      {
        events: events_url
        header: { center: 'month,agendaWeek,agendaDay' }
        defaultTimedEventDuration: '00:30:00'
        firstDay: 1
        lang: "es"
        businessHours:
          start: '08:00'
          end: '20:00'
          dow: [ 1, 2, 3, 4, 5, 6 ]
        eventClick: (calEvent, jsEvent, view) ->
          $.ajax
            type: "GET"
            url: "/appointments/#{calEvent.id}"
          false
      }
#   $('#appointmentsContainer').fullCalendar({});

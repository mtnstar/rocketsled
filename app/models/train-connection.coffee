`import Object from 'ember'`
`import moment from 'moment'`

TrainConnection = Ember.Object.extend {
  products: null,
  from: null,
  depart_time: Ember.computed('from', ->
    date = @get('from').departure
    moment(date).format('HH:mm')
  )
  delay: Ember.computed('delay', ->
    if @from.delay
      '+ ' + @from.delay + ' mins'
    else
      'on time'
  )
  is_delayed: ->
    @delay != 'on time'
}

`export default TrainConnection`

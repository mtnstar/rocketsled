`import Ember from 'ember'`
`import TrainConnection from '../models/train-connection'`

TrainConnectionsService = Ember.Service.extend
  connections: (from, to) ->
    base_url = 'http://transport.opendata.ch/v1/'
    params = 'connections?from='
    params += from
    params += '&to='
    params += to
    params += '&limit=6'
    Ember.$.getJSON(base_url + params).then (data) ->
      $(data.connections).map(->
        TrainConnection.create({
          products: @products,
          from: @from
        })
      )

`export default TrainConnectionsService`

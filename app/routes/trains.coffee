`import Ember from 'ember'`

Connections = Ember.Route.extend
  con: Ember.inject.service('train-connections')
  model: (params) ->
    @get('con').connections('Thun', 'Bern')

`export default Connections`

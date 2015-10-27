`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'train-connection', 'Integration | Component | train connection', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{train-connection}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#train-connection}}
      template block text
    {{/train-connection}}
  """

  assert.equal @$().text().trim(), 'template block text'

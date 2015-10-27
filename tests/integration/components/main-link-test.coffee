`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'main-link', 'Integration | Component | main link', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{main-link}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#main-link}}
      template block text
    {{/main-link}}
  """

  assert.equal @$().text().trim(), 'template block text'

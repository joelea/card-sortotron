'use strict';

class cardSortGenerator.Views.CardView extends Backbone.View

    template: JST['app/scripts/templates/card.ejs']
    editableCardTemplate: JST['app/scripts/templates/editableCard.ejs']
    className: 'card'
    events:
      "keypress form" : "keyPressOnForm"
      "change" : "modelUpdated"

    render: ->
      if @model.hasText()
        html = @template(card: @model)
      else
        html = @editableCardTemplate(card: @model)

      (@$el).html(html)

    updateModelText: ->
      console.log "submitting"
      text = @$('#card-text').val()
      @model.set 'text', text
      console.log "submitted"
      console.log @model

    keyPressOnForm: (keyPress) ->
      if keyPress.keyCode == 13
        @updateModelText()
      
    modelUpdated: ->
      console.log "model updated"
      @render()

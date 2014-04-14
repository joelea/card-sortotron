'use strict';

class cardSortGenerator.Views.CardView extends Backbone.View

    template: JST['app/scripts/templates/card.ejs']
    editableCardTemplate: JST['app/scripts/templates/editableCard.ejs']
    className: 'card'
    events:
      "keypress form" : "keyPressOnForm"
      "change" : "modelUpdated"
      "click .card" : "cardClicked"

    editable: true

    render: ->
      if @editable
        html = @editableCardTemplate(card: @model)
      else
        html = @template(card: @model)

      @$el.html(html)
      @$('input').focus() if @editable

    cardClicked: ->
      console.log 'clicked'
      @editable = true
      @render()

    updateModelText: ->
      text = @$('#card-text').val()
      @model.set 'text', text

    keyPressOnForm: (keyPress) ->
      if keyPress.keyCode == 13
        @updateModelText()
      
    modelUpdated: ->
      @editable = false
      @render()

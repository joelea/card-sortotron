'use strict';

class cardSortGenerator.Views.CardView extends Backbone.View

    template: JST['app/scripts/templates/card.ejs']
    editableCardTemplate: JST['app/scripts/templates/editableCard.ejs']
    className: 'card'
    events:
      "keypress form" : "keyPressOnForm"
      "change" : "modelUpdated"
      "click .card" : "cardFocused"
      "focusout .card" : "cardUnfocused"

    editable: true

    render: ->
      if @editable
        html = @editableCardTemplate(card: @model)
      else
        html = @template(card: @model)

      @$el.html(html)
      @focusOnField() if @editable

    focusOnField: ->
      textLength = @model.get('text')?.length || 0
      el = @$('input').get(0)

      el.selectionStart = textLength
      el.selectionEnd = textLength
      el.focus()

    cardFocused: ->
      if not @editable
        @editable = true
        @render()

    cardUnfocused: ->
      @updateModelText()

    updateModelText: ->
      text = @$('#card-text').val()
      @model.set 'text', text

    keyPressOnForm: (keyPress) ->
      enterWasPressed = keyPress.keyCode == 13
      if enterWasPressed then @updateModelText()
      
    modelUpdated: ->
      @editable = false
      @render()

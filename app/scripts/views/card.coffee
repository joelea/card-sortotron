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
      @focusOnField() if @editable

     focusOnField: ->
       el = @$("input").get(0)
       elemLen = el?.value?.length || 0

       el.selectionStart = elemLen
       el.selectionEnd = elemLen
       el.focus()

    cardClicked: ->
      console.log 'clicked'
      if not @editable
        @editable = true
        @render()

    updateModelText: ->
      text = @$('#card-text').val()
      @model.set 'text', text

    keyPressOnForm: (keyPress) ->
      enterWasPressed = keyPress.keyCode == 13
      if enterWasPressed then @updateModelText() 
      
    modelUpdated: ->
      @editable = false
      @render()

'use strict';

class cardSortGenerator.Views.CardSetView extends Backbone.View

    template: JST['app/scripts/templates/CardSet.ejs']

    initialize: ->
      @collection.on('add', @cardAdded, this)

    generateNewAnchorElement: ->
      (@$el).append("<div id='card-anchor'></div>")
      return @$el.children('#card-anchor').last()

    cardAdded: (card) ->
      newElement = @generateNewAnchorElement()
      cardView = new cardSortGenerator.Views.CardView(model: card, el: newElement)
      cardView.render()

      @repositionAddButton()

    repositionAddButton: ->
      button = $('#add-card-button-container')
      button.detatch
      $('.cards').append button

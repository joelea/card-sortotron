'use strict';

class cardSortGenerator.Views.CardSetView extends Backbone.View

    template: JST['app/scripts/templates/CardSet.ejs']

    initialize: ->
      @collection.on('add', @cardAdded, this)

    cardAdded: (card) ->
      cardView = new cardSortGenerator.Views.CardView(model: card)
      cardView.render()
      @repositionAddButton()

    repositionAddButton: ->
      console.log 'removing'
      button = $('#add-card-button-container')
      button.detatch
      $('.cards').append button

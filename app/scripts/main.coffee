window.cardSortGenerator =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}


  init: ->
    cardSet = new @Collections.CardSet()
    $('.btn').click(cardSet.createNewCard)
    view = new @Views.CardSetView(collection: cardSet);

$ ->
  'use strict'
  cardSortGenerator.init();

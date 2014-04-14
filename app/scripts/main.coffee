window.cardSortGenerator =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: ->
    cardSet = new @Collections.CardSet()
    $('#add-card-button').click(cardSet.createNewCard)
    view = new @Views.CardSetView(collection: cardSet, el: ".cards")

$ ->
  'use strict'
  cardSortGenerator.init()

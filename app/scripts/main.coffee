window.cardSortGenerator =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}


  init: ->
    cardSet = new @Collections.CardSet()
    createNewCard = (element) =>
      console.log('clicked')
      cardSet.add(new @Models.CardModel)

    $('.btn').click(createNewCard)
    view = new @Views.CardSetView({collection: cardSet});

$ ->
  'use strict'
  cardSortGenerator.init();

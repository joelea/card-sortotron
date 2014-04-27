window.cardSortGenerator =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: ->
    cardSet = new @Collections.CardSet()
    view = new @Views.AppView(collection: cardSet, el: '#app-anchor')
    view.Views = @Views
    view.Models = @Models
    view.render()

$ ->
  'use strict'
  cardSortGenerator.init()

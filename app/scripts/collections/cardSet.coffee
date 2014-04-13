'use strict';

class cardSortGenerator.Collections.CardSet extends Backbone.Collection
  model: cardSortGenerator.Models.CardModel

  createNewCard: (element) =>
    console.log('clicked')
    @add(new @model())

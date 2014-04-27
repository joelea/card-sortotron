'use strict';

class cardSortGenerator.Models.PrintableCardSortModel extends Backbone.Model
  numberOfSets: -> @get('numberOfSets')

  pages: -> @get("cardSet").map(@pageOf)

  pageOf: (card) => [1..@numberOfSets()].map( (i) => card )


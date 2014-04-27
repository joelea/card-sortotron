'use strict';

class cardSortGenerator.Models.PrintableCardSortModel extends Backbone.Model
  pages: -> @get("cardSet").map(@pageOf)

  pageOf: (card) -> [1..10].map( (i) => card )

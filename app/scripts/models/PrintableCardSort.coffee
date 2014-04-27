'use strict';

class cardSortGenerator.Models.PrintableCardSortModel extends Backbone.Model
  pages: ->
    pages = []
    @get("cardSet").forEach( (e) => pages.push(e) )
    return pages

'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: ->
    @has 'text'

  hasPicture: ->
    @has 'picture'

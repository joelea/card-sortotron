'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: ->
    @has 'text'

  hasPicture: ->
    @has 'picture'

  addContent: (picture) ->
    if picture == ''
      return @failure()

    @set 'picture', picture
    return @success()

  getPicture: -> @get 'picture'

  error: (text) ->
    success: false,
    error: text

  success: -> success: true
  failure: -> success: false

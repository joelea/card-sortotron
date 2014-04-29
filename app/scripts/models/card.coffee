'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: ->
    @has 'text'

  hasPicture: ->
    @has 'picture'

  addContent: (content) ->
    if content == ''
      return @failure()

    @set 'picture', content
    return @success()

  getPicture: -> @get 'picture'

  success: -> success: true
  failure: -> success: false

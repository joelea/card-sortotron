'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: ->
    @has 'text'

  hasPicture: ->
    @has 'picture'

  addContent: (picture) -> @addPicture picture

  addPicture: (picture) ->
    if picture == ''
      return @error 'There was no url entered. Please enter a valid URL to add a picture'

    @set 'picture', picture
    return @success()

  getPicture: -> @get 'picture'

  error: (text) ->
    success: false,
    error: text

  success: ->
    success: true

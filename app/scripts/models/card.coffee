'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: ->
    @has 'text'

  hasPicture: ->
    @has 'picture'

  addPicture: (picture) ->
    @set 'picture', picture
    if picture == ''
      return @error 'There was no url entered. Please enter a valid URL to add a picture'

    return @success()

  error: (text) ->
    success: false,
    error: text

  success: ->
    success: true

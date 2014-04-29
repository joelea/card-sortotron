'use strict';

class window.Content
  constructor: (rawContent) ->  @raw = rawContent

  isAPicture: -> @raw.indexOf('.jpg') != -1

  type: ->
    if @isAPicture()
      return 'picture'

    return 'text'

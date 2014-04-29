'use strict';

class window.Content
  constructor: (rawContent) ->  @raw = rawContent

  isAPicture: -> @raw.indexOf('.jpg') != -1

  ofType: (type) ->
    if type == 'picture'
      return @isAPicture()

    return type == 'text'

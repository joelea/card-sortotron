'use strict';

class window.Content
  constructor: (rawContent) -> @raw = rawContent
  
  imageExtensions: ['jpg', 'png']

  isAPicture: ->
    @imageExtensions.reduce( ((left, ext) => left || @hasExtension(ext)), false)

  hasExtension: (ext) -> @raw?.indexOf(ext) != -1

  or: (a,b) -> a || b

  ofType: (type) ->
    if type == 'picture'
      return @isAPicture()

    return type == 'text'

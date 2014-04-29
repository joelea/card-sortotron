'use strict';

class window.Content
  constructor: (rawContent) -> @raw = rawContent
  
  imageExtensions: ['jpg', 'png']

  isAPicture: ->
    isPicture = false
    @imageExtensions.forEach((ext) => isPicture = isPicture || @hasExtension(ext) )
    return isPicture

  hasExtension: (ext) -> @raw?.indexOf(ext) != -1

  or: (a,b) -> a || b

  ofType: (type) ->
    if type == 'picture'
      return @isAPicture()

    return type == 'text'

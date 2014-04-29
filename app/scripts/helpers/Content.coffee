'use strict';

class window.Content
  constructor: (rawContent) -> @raw = rawContent
  
  imageExtensions: ['jpg', 'png']

  isAPicture: ->
    _or = (a,b) -> a or b
    @imageExtensions.map( (ext) => @hasExtension(ext) )
                    .reduce(_or)

  hasExtension: (ext) -> @raw?.indexOf(ext) != -1

  ofType: (type) ->
    if type == 'picture'
      return @isAPicture()

    return type == 'text'

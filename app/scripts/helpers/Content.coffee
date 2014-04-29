'use strict';

class window.Content
  constructor: (rawContent) -> @raw = rawContent
  
  imageExtensions: ['jpg', 'png', 'bmp']

  isAPicture: -> @hasAValidExtension() && @isAURL()
  isAURL: -> @raw.indexOf('http') == 0

  hasAValidExtension: ->
    _or = (a,b) -> a or b
    @imageExtensions.map( (ext) => @hasExtension(ext) )
                    .reduce(_or)

  hasExtension: (ext) -> @raw?.indexOf(ext) != -1

  ofType: (type) ->
    if @isAPicture()
     return type == 'picture'

    return type == 'text'

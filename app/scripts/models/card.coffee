'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: -> @has 'text'

  addText: (text) -> 
    @set 'text', text
    return @success()

  getText: -> @get 'text'

  hasPicture: -> @has 'picture'

  addPicture: (picture) -> 
    @set 'picture', picture
    return @success()

  getPicture: -> @get 'picture'

  isPicture: (content) -> content.indexOf('.jpg') != -1

  addContent: (content) ->
    if content == ''
      return @failure()

    if @isPicture(content)
      return @addPicture content

    return @addText content




  success: -> success: true
  failure: -> success: false

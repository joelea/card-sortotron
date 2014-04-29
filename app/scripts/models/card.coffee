'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  hasText: -> @has 'text'

  addText: (text) ->
    @set 'text', text
    return @success()

  getText: -> @get 'text'

  hasPicture: -> @get('content')?.type == 'picture'

  addPicture: (url) ->
    @set 'content', @picture(url)
    return @success()

  picture: (url) ->
    type: 'picture',
    details:
      url: url

  getPicture: -> @get('content').details.url

  isPicture: (content) -> content.indexOf('.jpg') != -1

  addContent: (content) ->
    if content == ''
      return @failure()

    if @isPicture(content)
      return @addPicture content

    return @addText content




  success: -> success: true
  failure: -> success: false

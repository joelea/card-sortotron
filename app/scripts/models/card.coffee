'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  contentIs: (type) ->  @get('content')?.type == type

  hasText: -> @contentIs('text')

  addText: (text) ->
    @set 'content', @text(text)
    return @success()

  text: (text) ->
    type: 'text',
    details:
      text: text

  getText: -> @get('content').details.text

  hasPicture: -> @contentIs('picture')

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

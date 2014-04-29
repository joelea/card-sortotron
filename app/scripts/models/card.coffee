'use strict';

class cardSortGenerator.Models.CardModel extends Backbone.Model

  contentIs: (type) ->  @get('content')?.type == type

  addContent: (content) ->
    if content.raw == ''
      return @failure()

    if content.isAPicture()
      return @addPicture content

    return @addText content

  text: (text) ->
    type: 'text',
    details:
      text: text

  hasText: -> @contentIs('text')

  addText: (text) ->
    @set 'content', @text(text)
    return @success()

  picture: (url) ->
    type: 'picture',
    details:
      url: url

  getText: -> @get('content').details.text.raw

  hasPicture: -> @contentIs('picture')

  addPicture: (url) ->
    @set 'content', @picture(url)
    return @success()

  getPicture: -> @get('content').details.url.raw

  success: -> success: true
  failure: -> success: false

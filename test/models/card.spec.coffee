# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Card Model', ->
  beforeEach ->
    @card = new window.cardSortGenerator.Models.CardModel()
    @picture = new window.Content('http://d1hekt5vpuuw9b.cloudfront.net/assets/article/87db4dc6f40fab489988a3d5ef593d2d_ultimate-teddy-bear-test_featuredImage.jpg')
    @otherPicture = new window.Content('http://thumbs3.ebaystatic.com/d/l225/m/mmhzvWPK5dH7WlqODdQh0RA.jpg')
    @emptyContent = new window.Content('')
    @text = new window.Content('text')

  describe '#hasText', ->
    it 'should start with no text', ->
      @card.hasText().should.be.false

    it 'should have text after some has been set', ->
      @card.addContent @text
      @card.hasText().should.be.true

  describe '#hasPicture', ->
    it 'should start with no picture', ->
      @card.hasPicture().should.be.false

    it 'should have a picture after a valid picture has been set', ->
      @card.addContent @picture
      @card.hasPicture().should.be.true

    it 'should not have a picture after an invalid picture has attempted to be set', ->
      @card.addContent @emptyContent
      @card.hasPicture().should.be.false

  describe '#addContent', ->
    it 'should respond with success when it adds a valid picture', ->
      @card.addContent(@picture).success.should.be.true

    it 'should respond with failure when trying to add empty content', ->
      response = @card.addContent @emptyContent
      response.success.should.be.false

    it 'should take non picture-url text and set it as the text content', ->
      @card.addContent @text
      @card.getText().should.equal @text.raw

  describe '#getPicture', ->
    it 'should retrieve a valid, added picture', ->
      @card.addContent @picture
      @card.getPicture().should.equal @picture.raw

    it 'should have old valid pictures overridden by new valid pictures', ->
      @card.addContent @otherPicture
      @card.addContent @picture
      @card.getPicture().should.equal @picture.raw

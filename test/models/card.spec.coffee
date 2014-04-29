# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Card Model', ->
  beforeEach ->
    @card = new window.cardSortGenerator.Models.CardModel()
    @picture = 'http://d1hekt5vpuuw9b.cloudfront.net/assets/article/87db4dc6f40fab489988a3d5ef593d2d_ultimate-teddy-bear-test_featuredImage.jpg'
    @otherPicture = 'http://thumbs3.ebaystatic.com/d/l225/m/mmhzvWPK5dH7WlqODdQh0RA.jpg'

  describe '#hasText', ->
    it 'should start with no text', ->
      @card.hasText().should.be.false

    it 'should have text after some has been set', ->
      @card.set 'text', 'some text'
      @card.hasText().should.be.true

  describe '#hasPicture', ->
    it 'should start with no picture', ->
      @card.hasPicture().should.be.false

    it 'should have a picture after a valid picture has been set', ->
      @card.addPicture @picture
      @card.hasPicture().should.be.true

    it 'should not have a picture after an invalid picture has attempted to be set', ->
      @card.addPicture ''
      @card.hasPicture().should.be.false

  describe '#addContent', ->
    it 'should respond with success when it adds a valid picture', ->
      @card.addContent(@picture).success.should.be.true

    it 'should respond with failure when trying to add empty content', ->
      response = @card.addContent('')
      response.success.should.be.false

  describe '#getPicture', ->
    it 'should retrieve a valid, added picture', ->
      @card.addContent @picture
      @card.getPicture().should.equal @picture

    it 'should have old valid pictures overridden by new valid pictures', ->
      @card.addContent @otherPicture
      @card.addContent @picture
      @card.getPicture().should.equal @picture

    it 'should not retrieve an invalid, added picture', ->
      @card.addContent ''
      @card.getPicture.should.not.equal @picture

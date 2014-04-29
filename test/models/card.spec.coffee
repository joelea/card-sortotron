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

  describe '#addPicture', ->
    it 'should respond with success when it adds a valid picture', ->
      @card.addPicture(@picture).success.should.be.true

    it 'should respond with failure when trying to add an empty url for a picture', ->
      response = @card.addPicture('')
      response.success.should.be.false

    it 'should respond with a sensible error when you try to add an empty picture', ->
      response = @card.addPicture('')
      response.error.should.equal 'There was no url entered. Please enter a valid URL to add a picture'

  describe '#getPicture', ->
    it 'should retrieve a valid, added picture', ->
      @card.addPicture @picture
      @card.getPicture().should.equal @picture

    it 'should have old valid pictures overridden by new valid pictures', ->
      @card.addPicture @otherPicture
      @card.addPicture @picture
      @card.getPicture().should.equal @picture

    it 'should not retrieve an invalid, added picture', ->
      @card.addPicture ''
      @card.getPicture.should.not.equal @picture

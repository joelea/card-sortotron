# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Card Model', ->
  beforeEach ->
    @card = new window.cardSortGenerator.Models.CardModel()

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
      @card.addPicture 'http://d1hekt5vpuuw9b.cloudfront.net/assets/article/87db4dc6f40fab489988a3d5ef593d2d_ultimate-teddy-bear-test_featuredImage.jpg'
      @card.hasPicture().should.be.true

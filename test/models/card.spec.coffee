# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Card Model', ->
  beforeEach ->
    @card = new window.cardSortGenerator.Models.CardModel()

  describe '#hasText', ->
    it 'should start with no text', ->
      @card.hasText().should.be.false

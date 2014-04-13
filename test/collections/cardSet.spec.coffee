# global beforeEach, describe, it, assert, expect
"use strict"

describe 'CardSet', ->
  describe '#createNewCard', ->
    it 'should add a new card model to the collection', ->
      cardSet = new window.cardSortGenerator.Collections.CardSet()

      cardSet.createNewCard()

      cardSet.length.should.equal 1

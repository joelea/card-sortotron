# global beforeEach, describe, it, assert, expect
"use strict"

describe 'CardSet', ->
  beforeEach ->
    @cardSet = new window.cardSortGenerator.Collections.CardSet()

  describe '#createNewCard', ->
    it 'should add a new card model to the collection', ->
      @cardSet.createNewCard()
      @cardSet.length.should.equal 1

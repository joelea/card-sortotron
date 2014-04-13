# global beforeEach, describe, it, assert, expect
"use strict"

describe 'CardSet', ->
  beforeEach ->
    @cardSet = new window.cardSortGenerator.Collections.CardSet()

  describe '#initialize', ->
    it 'should be empty on creation', ->
      @cardSet.length.should.equal 0

  describe '#createNewCard', ->
    it 'should add a new card model to the collection', ->
      @cardSet.createNewCard()
      @cardSet.length.should.equal 1

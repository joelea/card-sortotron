# global beforeEach, describe, it, assert, expect
"use strict"

describe 'PrintableCardSortModel', ->
  beforeEach ->
    @Model = cardSortGenerator.Models.PrintableCardSortModel
    @CardSet = cardSortGenerator.Collections.CardSet

  describe 'when given an empty cardset', ->
    beforeEach ->
      emptyCardSet = new @CardSet
      @emptyPrintable = new @Model(collection: emptyCardSet, numberOfSets: 10)

    it 'Should have no pages if instantiated with an empty cardSet', ->
      @emptyPrintable.pages().should.be.empty

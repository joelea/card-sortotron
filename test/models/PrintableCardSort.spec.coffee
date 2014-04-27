# global beforeEach, describe, it, assert, expect
"use strict"

describe 'PrintableCardSortModel', ->
  beforeEach ->
    @Model = cardSortGenerator.Models.PrintableCardSortModel
    @CardSet = cardSortGenerator.Collections.CardSet

  describe 'when given an empty cardset', ->
    beforeEach ->
      emptyCardSet = new @CardSet()
      @emptyPrintable = new @Model(cardSet: emptyCardSet, numberOfSets: 10)

    it 'Should have no pages if instantiated with an empty cardSet', ->
      expect(@emptyPrintable.pages()).to.be.empty

  describe 'when given a card set with one card', ->
    beforeEach ->
      @printableSetForClassOf = (n) ->
        singletonCardSet = new @CardSet()
        singletonCardSet.createNewCard()
        return new @Model(cardSet: singletonCardSet, numberOfSets: n)

    it 'should contain a single page', ->
      printable = @printableSetForClassOf(10)
      expect(printable.pages()).to.have.length 1

    it 'and asked for a set of 10 should have a first page with 10 cards', ->
      printable = @printableSetForClassOf(10)
      expect(printable.pages()[0]).to.have.length 10

    it 'and asked for a set of 5 should have a first page with 10 cards', ->
      printable = @printableSetForClassOf(5)
      expect(printable.pages()[0]).to.have.length 5

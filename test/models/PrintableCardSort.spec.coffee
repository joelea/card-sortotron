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
      singletonCardSet = new @CardSet()
      singletonCardSet.createNewCard()
      @printable = new @Model(cardSet: singletonCardSet, numberOfSets: 10)

    it 'should contain a single page', ->
      expect(@printable.pages()).to.have.length 1

# global beforeEach, describe, it, assert, expect
"use strict"

describe 'PrintableCardSort Model', ->
  beforeEach ->
    @Model = cardSortGenerator.Models.PrintableCardSortModel
    @CardSet = cardSortGenerator.Collections.CardSet


  it 'Should have no pages if instantiated with an empty cardSet', ->
    emptyCardSet = new @CardSet
    emptyPrintable = new @Model(collection: emptyCardSet, numberOfSets: 10)
    emptyPrintable.pages().should.be.empty

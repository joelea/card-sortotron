# global beforeEach, describe, it, assert, expect
"use strict"

describe 'CardSet Collection', ->
  beforeEach ->
    @CardSetCollection = new .Collections.CardSet()

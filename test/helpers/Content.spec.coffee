# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Content', ->
  describe '#isPicture', ->
    examples = [ ['', false ],
                 ['text', false],
                 ['http://www.blah.com/blah.jpg', true] ]
      
    examples.forEach (example) ->
      it 'should correctly identify text as a picture or not', ->
        content = new window.Content(example[0])
        content.isAPicture().should.equal example[1]


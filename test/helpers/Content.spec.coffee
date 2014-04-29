# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Content', ->
  describe '#getType', ->
    text = 'text'
    pic = 'picture'
    examples = [ ['', text ],
                 ['text', text],
                 ['http://www.blah.com/blah.jpg', pic] ]
      
    examples.forEach (example) ->
      it 'should correctly identify text as a picture or not', ->
        content = new window.Content(example[0])
        content.type().should.equal example[1]

# global beforeEach, describe, it, assert, expect
"use strict";

describe 'Content', ->
  describe '#getType', ->
    text = 'text'
    pic = 'picture'
    examples = [
      ['', text ],
      ['text', text],
      ['http://www.blah.com/blah.jpg', pic],
      ['http://www.blah.com/blah.png', pic]
    ]
      
    examples.forEach((example) ->
      it "should correctly identify '#{example[0]}' as #{example[1]}", ->
        content = new window.Content(example[0])
        content.ofType(example[1]).should.be.true
    )

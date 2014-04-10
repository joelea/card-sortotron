'use strict';

class cardSortGenerator.Views.CardView extends Backbone.View

    template: JST['app/scripts/templates/card.ejs']
    className: 'card'
    el: '.cards'

    render: ->
      (@$el).append(@template)

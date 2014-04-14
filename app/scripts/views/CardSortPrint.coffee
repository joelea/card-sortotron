class cardSortGenerator.Views.CardSortPrintView extends Backbone.View
  template: JST['app/scripts/templates/cardSortPrintView.ejs']

  render: -> @$el.html(@template(cards: @collection))

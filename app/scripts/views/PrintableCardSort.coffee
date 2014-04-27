class cardSortGenerator.Views.PrintableCardSortView extends Backbone.View
  template: JST['app/scripts/templates/cardSortPrintView.ejs']

  render: -> @$el.html(@template(@model))

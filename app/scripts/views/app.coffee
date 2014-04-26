class cardSortGenerator.Views.AppView extends Backbone.View
  template: JST['app/scripts/templates/app.ejs']
  Views: {}
  events:
    'click #add-card-button' : 'addCard'
    'click #print-button' : 'print'
    'click #edit-button' : 'edit'
    
  render: ->
    @$el.html(@template())
    @subview ?= new @Views.CardSetView(collection: @collection, el: ".cards")
    @subview.render()

  addCard: ->
    console.log 'add card button clicked'
    @collection.createNewCard()

  print: ->
    printView = new @Views.PrintableCardSortView(collection: @collection, el: ".cards")
    printView.render()
    window.print()

  edit: ->
    console.log 'moving to edit'
    console.log @subview
    @subview.setElement '.cards'
    @subview.render()

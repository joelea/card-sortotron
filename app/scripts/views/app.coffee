class cardSortGenerator.Views.AppView extends Backbone.View
  template: JST['app/scripts/templates/app.ejs']
  Views: {}
  events:
    'click #add-card-button' : 'addCard'
    
  render: ->
    @$el.html(@template())
    subview = new @Views.CardSetView(collection: @collection, el: ".cards")
    subview.render()

  addCard: ->
    console.log 'add card button clicked'
    @collection.createNewCard()

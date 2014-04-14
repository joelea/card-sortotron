class cardSortGenerator.Views.AppView extends Backbone.View
  Views: {}
  events:
    'click #add-card-button' : 'addCard'
    
  render: ->
    subview = new @Views.CardSetView(collection: @collection, el: ".cards")
    subview.render()

  addCard: ->
    console.log 'add card button clicked'
    @collection.createNewCard()
    

define ['backbone'], (Backbone) ->
  PhotoView = Backbone.View.extend {
    initialize: () ->
      console.info 'Wahoo!!!'
    render: () ->
      html = "<h3>"+this.model.get('description') + '</h3>'
      $(this.el).html(html)
  }

  return PhotoView
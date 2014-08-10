define ['backbone'], (Backbone) ->
  PhotoView = Backbone.View.extend {
    initialize: () ->
    render: () ->
      html = "<img class='one-photo' src='"+this.model.get('url') + "'>"
      $(this.el).html(html)
      @
  }

  return PhotoView
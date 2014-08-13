define ['backbone'], (Backbone) ->
  PhotoView = Backbone.View.extend {
    initialize: () ->
    render: () ->
      html = $(this.model.get('img')).addClass('one-photo')
      $(this.el).html(html)
      @
  }

  return PhotoView
define [
  'backbone'
  'hbs!tmpl/slide-tmpl/one-photo'
  'hbs!tmpl/slide-tmpl/two-photo'
], (
  Backbone
  onePhotoTmpl
  twoPhotoTmpl
) ->
    SlideView = Backbone.View.extend {
      initialize: () ->
      render: () ->
        html = twoPhotoTmpl { images: ['first-photo', 'second-photo'] }
        $(this.el).html(html)
        @
    }

    return SlideView
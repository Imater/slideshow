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
        images = _.map this.model.get('imageCollection').models, (el,k) -> el.get('url')
        switch images.length
          when 1 then html = onePhotoTmpl { images: images }
          when 2 then html = twoPhotoTmpl { images: images }

        $(this.el).html(html)
        @
    }

    return SlideView
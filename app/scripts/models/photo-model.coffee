define [
  'require'
  'jquery'
  'backbone'
], (
  require
  $
  Backbone
) ->

    PhotoModel = Backbone.Model.extend {
      defaults: {
        url: '/samples/03598_rockymountain_3840x2400.jpg'
        img: null
        name: ''
      }
      initialize: ->
        @set 'img', new Image()
      load: () ->
        self = @
        console.time "imageLoadTime for #{self.get 'url'}"
        dfd = $.Deferred()
        $(@get('img')).load () ->
          console.timeEnd "imageLoadTime for #{self.get 'url'}"
          dfd.resolve( self.get('img') )
        @get('img').src = @get 'url'
        dfd.promise()

    }

    PhotoModel


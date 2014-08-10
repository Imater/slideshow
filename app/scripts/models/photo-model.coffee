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
        name: ''
      }

    }

    PhotoModel


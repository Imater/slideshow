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
        description: 'Fuck yeah!'
      }
      initialize: (photo)->
        @description = photo.description
      get: ()->
        @description
      set: (photo)->
        @description = photo.description if photo.description

    }

    PhotoModel


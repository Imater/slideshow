define [
  'require'
  'jquery'
  'backbone'
], (
  require
  $
  Backbone
) ->

    ToolbarModel = Backbone.Model.extend {
      defaults:
        isPlaying: false
        onPlay: undefined

      togglePlay: () ->
        if !@get('isPlaying')
          @set
            isPlaying: true
          @get('onPlay')()
        else
          @set
            isPlaying: false

    }

    ToolbarModel


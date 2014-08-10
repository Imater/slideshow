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
        isPlay: false
      togglePlay: () ->
        console.info @.get('isPlay')
        @set
          isPlay: !@.get('isPlay')
    }

    ToolbarModel


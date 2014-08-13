define [
  'backbone'
  'hbs!tmpl/toolbar-tmpl'
],
(
  Backbone
  tmpl
) ->
    ToolbarView = Backbone.View.extend {
      events:
        'click .play': '_click'
      initialize: () ->
        @listenTo @model, 'change', @render
      render: () ->
        playOrPause = if @model.get('isPlaying') then 'pause' else 'play'
        $(this.el).html tmpl { playOrPause: playOrPause }
        @
      _click: ()->
        @model.togglePlay()
    }

    return ToolbarView

sex = 3



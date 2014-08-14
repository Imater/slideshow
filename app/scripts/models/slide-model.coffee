define [
  'require'
  'jquery'
  'backbone'
  'async'
  'models/photo-model'
], (
  require
  $
  Backbone
  async
  PhotoModel
) ->

  SlideModel = Backbone.Model.extend {
    defaults: {
      showEffect: ['fadeIn']
      images: []
      showDuration: 5000
      hideEffect: ['fadeOut']
      template: 'onePhoto'
    }

    initialize: ()->
      @set 'imageCollection', new Backbone.Collection [], { model: PhotoModel }
      @set 'onLoadDfd', new $.Deferred()

    load: ->
      self = @
      imageCollection = @get('imageCollection')

      imageCollection.add @get('images')

      async.each imageCollection.models, (imageModel, cb)->
        imageModel.load().then ()->
          cb()
      , ()->
        self.get('onLoadDfd').resolve()

      @get('onLoadDfd').promise()

  }

  SlideModel


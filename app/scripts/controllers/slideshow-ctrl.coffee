define [
    'jquery'
    'async'
    'velocity'
    'views/photo-view'
    'models/photo-model'
    'views/toolbar-view'
    'models/toolbar-model'
    'data/sample-data'
],
  (
    $
    async
    velocity
    PhotoView
    PhotoModel
    ToolbarView
    ToolbarModel
    sampleData
) ->
    SlideShowCtrl = (query)->
      console.info sampleData[ parseInt(query)-1 ].photos.length

      showPhotos = []
      async.eachSeries sampleData[ parseInt(query)-1 ].photos, (photo, cb)->
        url = photo.url
        photoItem = new PhotoModel { url: url }
        photoView = new PhotoView { model: photoItem }
        nextPhoto = $('#photo-app .next-photo');
        nextPhoto.html(photoView.render().el).css('opacity', 0)
        nextPhoto.velocity(properties: {opacity: '1'}, options: {duration: 2000})
        prevPhoto = $('#photo-app .prev-photo').css('opacity', 1)
        prevPhoto.velocity(properties: {opacity: '0'}, options: {duration: 2000})
        setTimeout ()->
          prevPhoto.html photoView.render().$el.clone()
        , 2000
        setTimeout ()->
          cb()
        , 6000
      , ()->
        console.info 'Slides ended'

      toolbarItem = new ToolbarModel {}
      toolbarView = new ToolbarView { model: toolbarItem }
      $('#toolbar').append toolbarView.render().el

    SlideShowCtrl
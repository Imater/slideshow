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

      playSlideShow = () ->
        albumIndex = parseInt(query) - 1
        async.eachSeries sampleData[ albumIndex ].slides, (slide, cb)->
          console.info 'slide = ', slide
          cb()

      toolbarItem = new ToolbarModel { onPlay: playSlideShow }
      toolbarView = new ToolbarView { model: toolbarItem }
      $('#toolbar').append toolbarView.render().el

    SlideShowCtrl


    ###
          url = slide.url
          photoItem = new PhotoModel { url: url }
          photoView = new PhotoView { model: photoItem }
          nextPhoto = $('#photo-app .next-photo');
          nextPhoto.css('opacity', 0).html(photoView.render().el)
          nextPhoto.velocity(properties: {opacity: '1'}, options: {duration: 2000})
          prevPhoto = $('#photo-app .prev-photo').css('opacity', 1)
          prevPhoto.velocity(properties: {opacity: '0'}, options: {duration: 3000})
          setTimeout ()->
            prevPhoto.css('opacity', 0).html photoView.render().$el.clone()
          , 3000
          setTimeout ()->
            cb()
          , 6000
        , ()->
          console.info 'Slides ended'

    ###
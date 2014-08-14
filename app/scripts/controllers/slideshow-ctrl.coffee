define [
    'jquery'
    'async'
    'velocity'
    'models/slide-model'
    'models/toolbar-model'
    'views/photo-view'
    'views/toolbar-view'
    'views/slide-view'
    'data/sample-data'
],
  (
    $
    async
    velocity
    SlideModel
    ToolbarModel
    PhotoView
    ToolbarView
    SlideView
    sampleData
) ->
    SlideShowCtrl = (query)->
      slideModels = []

      playSlideShow = () ->
        preloadImages()
        count = 0
        async.eachSeries slideModels, (slideModel, cbNextSlide) ->
          console.time "show slide №#{count}"
          async.parallel [
            (cbTimeout)->
              setTimeout ->
                cbTimeout()
              , 5000
          ,
            (cbSlideLoaded)->
              slideModel.get('onLoadDfd').then ()->
                cbSlideLoaded()
          ], () ->
            console.timeEnd "show slide №#{count++}"
            cbNextSlide()
        , ->
          toolbarItem.stop()
          console.info 'SlideShow finished'

      preloadImages = () ->
        slidesOfCurrentAlbumFromServer = sampleData[parseInt(query) - 1].slides
        _.each slidesOfCurrentAlbumFromServer, (slide) ->
          slideModel = new SlideModel( slide )
          slideModels.push(slideModel)

        async.eachSeries slideModels, (slideModel, cbSlide) ->
          slideModel.load().then ->
            cbSlide()
        , () ->
          console.info 'preload completed'

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
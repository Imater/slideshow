define [
    'jquery'
    'views/photo-view'
    'models/photo-model'
    'views/toolbar-view'
    'models/toolbar-model'
],
  (
    $
    PhotoView
    PhotoModel
    ToolbarView
    ToolbarModel
) ->
    SlideShowCtrl = (query)->

      photoItem = new PhotoModel {description: 'Hello, i am first photo! ' + query}
      photoView = new PhotoView { model: photoItem}
      $('#photo-app').html photoView.render().el

      toolbarItem = new ToolbarModel {}
      toolbarView = new ToolbarView { model: toolbarItem }
      $('#photo-app').append toolbarView.render().el

    SlideShowCtrl
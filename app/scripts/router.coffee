define [
  'require'
  'jquery'
  'backbone'
  'controllers/main-ctrl'
  'controllers/slideshow-ctrl'
],
  (
  require
  $
  Backbone
  mainCtrl
  slideshowCtrl
  ) ->
    Router = Backbone.Router.extend {
      routes:
        "": "_main"
        "!": "_main"
        "!/slideshow/:query": "_slideshow"

      '_main': mainCtrl
      '_slideshow': slideshowCtrl
    }
    Router
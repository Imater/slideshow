requirejs.config {
  "paths":
    jquery: "/bower_components/jquery/dist/jquery"
    underscore: "/bower_components/underscore-amd/underscore"
    backbone: "/bower_components/backbone-amd/backbone"
    hbs: '/bower_components/require-handlebars-plugin/hbs'
    font: '/bower_components/'
    tmpl: '../tmpl'
    async: '../bower_components/async/lib/async'
    velocity: '../bower_components/velocity/jquery.velocity'
  hbs:
    helpers: true,            # default: true
    i18n: false,              # default: false
    templateExtension: 'hbs', # default: 'hbs'
    partialsUrl: ''           # default: ''
}

define [
  'require'
  'jquery'
  'backbone'
  'router'
], (
  require
  $
  Backbone
  Router
) ->

  new Router()
  Backbone.history.start({pushState: false});





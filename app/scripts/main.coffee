requirejs.config {
  "paths":
    "jquery": "../app/bower_components/jquery/dist/jquery"
    "underscore": "../app/bower_components/underscore-amd/underscore"
    "backbone": "../app/bower_components/backbone-amd/backbone"
}

define ['require', 'jquery', './models/Photo', 'views/app'], (require, $, Photo, AppView) ->
  new AppView

  img1 = new Photo('https://s3-eu-west-1.amazonaws.com/minutta/2.jpg?'+Math.random() )
  img1.load().then (img)->
    $('body').append $(img).addClass 'photo'
    img1.fadeOut()
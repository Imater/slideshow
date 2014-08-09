define (require) ->
  Photo = require './models/photo'
  img1 = new Photo('https://s3-eu-west-1.amazonaws.com/minutta/2.jpg')
  img1.load().then (img)->
    $('body').append $(img).addClass 'photo'
    img1.fadeOut()
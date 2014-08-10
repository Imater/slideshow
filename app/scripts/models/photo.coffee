define ['require', 'jquery'], (require, $) ->
  class Photo
    constructor: (url = '') ->
      @url = url
      @dfd = $.Deferred()
      @photoImage = new Image()
    load: () ->
      @photoImage.onload = =>
        @dfd.resolve(@photoImage)
      @photoImage.src = @url
      @dfd.promise()
    fadeOut: () ->
      $(@photoImage).fadeOut(5000)


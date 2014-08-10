requirejs.config {
  "paths":
    "jquery": "../app/bower_components/jquery/dist/jquery"
    "underscore": "../app/bower_components/underscore-amd/underscore"
    "backbone": "../app/bower_components/backbone-amd/backbone"
}

define [
  'require'
  'jquery'
  'views/photo-view'
  'models/photo-model'
], (
  require
  $
  PhotoView
  PhotoModel
) ->
  photoItem = new PhotoModel {description: 'Hello, i am first photo!'}
  photoView = new PhotoView { model: photoItem}
  $('body').append photoView.render()


  photoItem = new PhotoModel {description: 'Hello, i am second photo!'}
  photoView = new PhotoView { model: photoItem}
  $('body').append photoView.render()

  Timer = React.createClass {
    getInitialState: () ->
      elapsed: 0
      start: new Date()
    componentDidMount: () ->
      @timer = setInterval(@tick, 10)
    tick: () ->
      @setState elapsed: @state.elapsed + 1
    componentWillUnmount: () ->
      clearInterval( @timer )
    render: () ->
      return React.DOM.p {}, [
        'Seconds Elapsed: ' + @state.elapsed
      ]
  }

  React.renderComponent Timer(), document.getElementById('photo-app')



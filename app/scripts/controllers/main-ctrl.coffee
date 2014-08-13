define [
    'jquery'
    'hbs!tmpl/main-tmpl'
  ],
  (
    $
    tmpl
) ->
    MainCtrl = (query)->
      $('#photo-app').html tmpl {date: new Date()}

    return MainCtrl

    
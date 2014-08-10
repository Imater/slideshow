express = require 'express'

app = express()

app.use express.static '../app'
app.get '*', (request, response) ->
  response.sendfile('../app/index.html')

app.listen process.env.PORT || 3000

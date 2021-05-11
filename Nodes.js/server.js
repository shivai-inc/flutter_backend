const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const bodyParser = require('body-parser')
const passport = require('passport')
const routes = require('./routes/index')
const app = express()

if(process.env.NODE_ENV === 'development'){
  app.use(morgan('dev'))
}else{
  app.use(morgan('production'))
}

app.use(cors())
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())
app.use(routes)

const PORT = process.env.PORT || 8080


app.listen(PORT, console.log('Server running on '+process.env.NODE_ENV+ ' mode on port '+PORT.toString()))

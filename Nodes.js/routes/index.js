const express = require('express')
const router = express.Router();


router.get('/', (req, res) => {
  res.send("Hello world")
})

router.get('/api',(req, res) => {
  res.send("API")
})

module.exports = router

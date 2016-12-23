# Description:
#   Displays a random comic from http://webcomicname.tumblr.com/
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   HUBOT_TUMBLR_API_KEY - A Tumblr OAuth Consumer Key will work fine
#
# Commands:
#   oh no - Show a comic
#
# Author:
#   kevinmarx

tumblr = require 'tumblrbot'
url = "webcomicname.tumblr.com"

module.exports = (robot) ->
  robot['hear'](/oh\sno/i, (msg) ->
    tumblr.photos(url).random (post) ->
      msg.send post.photos[0].original_size.url
  )

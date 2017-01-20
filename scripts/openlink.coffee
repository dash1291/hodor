{spawn} = require 'child_process'

module.exports = (robot) ->
  robot.respond /open (.*)/i, (res) ->
    spawn '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome', [res.match[1]]
    res.send "opening link"

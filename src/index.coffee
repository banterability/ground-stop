request = require 'request'

class GroundStop
  BASE_URL = "http://services.faa.gov/airport/status"

  buildUrl: (options) ->
    "#{BASE_URL}/#{options.airport}"

  fetch: (options, cb) ->
    {airport} = options
    requestOptions =
      url: @buildUrl {airport}
      json: true

    request requestOptions, (err, res, body) ->
      cb err, body

module.exports = new GroundStop()

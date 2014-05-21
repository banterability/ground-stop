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
      return cb new Error "FAILED – #{res.statusCode} requesting '#{airport}'" unless res.statusCode == 200
      cb err, body

module.exports = new GroundStop()

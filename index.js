var request = require('request');
var BASE_URL = 'http://services.faa.gov/airport/status';

function buildUrl(options){
  return BASE_URL + '/' + options.airport;
}

module.exports = {
  fetch: function(options, cb){
    var airport = options.airport;
    var requestOptions = {
      url: buildUrl({airport: airport}),
      json: true
    };

    request(requestOptions, function(err, res, body){
      if (res.statusCode !== 200) {
        return cb(new Error(res.statusCode));
      }
      return cb(err, body);
    });
  }
};

ground-stop
-----------

Client for the FAA's [Airport Status API](http://services.faa.gov/docs/services/airport/).

Usage
=====

```javascript
var GroundStop = require('ground-stop');

GroundStop.fetch({airport: 'ORD'}, function(err, status){
  // do something interesting
});
```

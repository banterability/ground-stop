ground-stop
-----------

Client for the FAA's [Airport Status API](http://services.faa.gov/docs/services/airport/).

Usage
=====

```javascript
var GroundStop, gs;

GroundStop = require('ground-stop');
gs = new GroundStop();

gs.fetch({airport: 'ORD'}, function(err, status){
  // do something interesting
}
```

Development
===========

Rebuild from CoffeeScript source with `make build`.
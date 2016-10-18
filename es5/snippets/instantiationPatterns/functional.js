'use strict';

var Counter = function() {
	var o = {};
	o.count = 0;

	o.inc = function() {
		this.count++;
	};

	o.print = function() {
		console.log(this.count);
	};

	return o;
};

var c = Counter();
c.print();
// OUTPUT: 0
c.inc();
c.inc();
c.print();
// OUTPUT: 2

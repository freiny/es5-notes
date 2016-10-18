'use strict';

var Counter = function() {
	var o = Object.create(Methods);
	o.count = 0;

	return o;
};

var Methods = {};
Methods.inc = function() {
	this.count++;
};
Methods.print = function() {
	console.log(this.count);
};

var c = Counter();
c.print();
// OUTPUT: 0
c.inc();
c.inc();
c.print();
// OUTPUT: 2

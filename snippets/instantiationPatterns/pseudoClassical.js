'use strict';

var Counter = function() {
	this.count = 0;
};

Counter.prototype.inc = function() {
	this.count++;
};
Counter.prototype.print = function() {
	console.log(this.count);
};

var c = new Counter();
c.print();
// OUTPUT: 0
c.inc();
c.inc();
c.print();
// OUTPUT: 2

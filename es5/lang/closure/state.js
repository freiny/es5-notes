'use strict';

var greet = function(name) {
	return function() {
		return name;
	};
};

var a = greet('ann');
var b = greet('bob');
var c = greet('cat');

var f = function(callback) {
	console.log('Hello', callback());
};

f(a);
// OUTPUT: Hello ann
f(b);
// OUTPUT: Hello bob
f(c);
// OUTPUT: Hello cat

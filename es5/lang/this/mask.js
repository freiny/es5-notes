'use strict';

var obj = {};
var o = {};

obj.fn = function(){
	console.log(this);

	o.f = function(){
		console.log(this);
	};
	o.f();

};

obj.fn();
// OUTPUT:
// { fn: [Function] }
// { f: [Function] }

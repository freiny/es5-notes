'use strict';

console.log(this);
// OUTPUT: {}

var obj = {};
obj.name = 'MyObj';
obj.fn = function(){
	console.log(this);
};
obj.fn();
// OUTPUT: { fn: [Function], name: 'MyObj' }

var f = function(){
	console.log(this);
};
f();
// OUTPUT: undefined

function fn() {
	console.log(this);
}
fn();
// OUTPUT: undefined

var o = {};
o.name = 'MyO';
o.fn = fn;
o.fn();
// OUTPUT: { fn: [Function: fn], name: 'MyO' }

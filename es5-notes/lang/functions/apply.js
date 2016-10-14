'use strict';

console.log.apply(null, ['a', 1, 2.7]);
// OUTPUT: a 1 2.7

function f() {
	var args = [];
	for (var i=0; i<arguments.length-1; i++) {
		args.push(arguments[i]);
	}
	console.log.apply(null, args);
}
f(1,2,3,4);
// OUTPUT: 1 2 3
f('a','b','c','d');
// OUTPUT: a g c

var obj = {};
obj.name = 'MyObj';
obj.fn = function(arg1, arg2){
	console.log(this.name, arg1, arg2);
};
obj.fn(1, 'a');
// OUTPUT: MyObj 1 a
obj.fn.apply(obj, [1, 'a']);
// OUTPUT: MyObj 1 a

var o = {};
o.name = "MyO";
obj.fn.apply(o, [3, 'c']);
// OUTPUT: MyO 3 c

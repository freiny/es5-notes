'use strict';

console.log.apply(null, ['a', 1, 2.7]);
// OUTPUT: a 1 2.7

function f() {
	var args = [];
	for (var i=0; i<arguments.length; i++) {
		args.push(arguments[i]);
	}
	args.pop();
	console.log.apply(null, args);
}
f(1,2,3,4);
// OUTPUT: 1 2 3
f('a','b','c','d');
// OUTPUT: a g c

var obj = {};
obj.name = 'MyObj';
obj.fn = function(a, b, c){
	console.log(this.name, typeof a, typeof b);
};
obj.fn(1, 'a');
// OUTPUT: number string undefined
obj.fn.apply(obj, [2, 'b']);

var o = {};
o.name = "MyO";
obj.fn.apply(o, [3, 'c']);
// OUTPUT: MyO number string

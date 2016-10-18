'use strict';

console.log.call(null, 'a', 1, 2.7);
// OUTPUT: a 1 2.7

var obj = {};
obj.name = 'MyObj';
obj.fn = function(arg1, arg2){
	console.log(this.name, arg1, arg2);
};
obj.fn(1, 'a');
// OUTPUT: MyObj 1 a
obj.fn.call(obj, 1, 'a');
// OUTPUT: MyObj 1 a

var o = {};
o.name = "MyO";
obj.fn.call(o, 3, 'c');
// OUTPUT: MyO 3 c

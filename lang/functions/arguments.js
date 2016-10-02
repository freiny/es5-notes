'use strict';

function fn(name, age, species){
	console.log(arguments);
	console.log(arguments[0],arguments[1],arguments[2]);
}
fn('fido', 4, 'dog');
// OUTPUT: { '0': 'fido', '1': 4, '2': 'dog' }
// OUTPUT: fido 4 dog

function f() {
	for (var i=0; i<arguments.length; i++) {
		console.log(arguments[i]);
	}
}
f('a', 'b', 1, 2);
// OUTPUT:
// a
// b
// 1
// 2

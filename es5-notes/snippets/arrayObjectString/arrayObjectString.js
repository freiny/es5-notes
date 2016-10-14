'use strict';

function typeOf(d){
	if (typeof d !== 'object') return (typeof d);
	if (d.length === undefined) return 'object';
	return 'array';
}

console.log(typeOf([1,2]));
console.log(typeOf({'a': 1, 'b': 2}));
console.log(typeOf('abc'));
// OUTPUT:
// array
// object
// string

console.log(typeOf([]));
console.log(typeOf({}));
console.log(typeOf(''));
// OUTPUT:
// array
// object
// string

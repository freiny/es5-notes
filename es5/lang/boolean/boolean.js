'use strict';

console.log(typeof true, typeof false);
// OUTPUT: boolean boolean

console.log(!true, !false);
// OUTPUT: false true

console.log(
	true && true,
	true && false,
	false && true,
	false && false
);
// OUTPUT: true false false

console.log(
	true || true,
	true || false,
	false || true,
	false || false
);
// OUTPUT: true true true false

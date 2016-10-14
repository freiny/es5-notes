'use strict';

console.log(4 > 2.5);
// OUTPUT: true

console.log(4 < 2.5);
// OUTPUT: false

console.log(1 <= 2.5);
// OUTPUT: true

console.log(1 >= 2.5);
// OUTPUT: false

console.log(4 === 4.0);
// OUTPUT: true

console.log(4 === '4');
// OUTPUT: false

console.log(4 == '4');
// OUTPUT: true

console.log(
	false === null,
	false === undefined,
	null === undefined
);
// OUTPUT: false false false

console.log(
	false == null,
	false == undefined,
	null == undefined
);
// OUTPUT: false false true

console.log(
	0 === false,
	0 == false,
	0 === null,
	0 == null,
	0 === undefined,
	0 == undefined
);
// OUTPUT: false true false false false false

var obj1 = {'key1': 'value1'};
var obj2 = {'key1': 'value1'};
var obj3 = obj1;
console.log(
	obj1 === obj2,
	obj1 == obj2,
	obj1 === obj3,
	obj1 == obj3
);
// OUTPUT: false false true true

var arr1 = [1, 2, 3];
var arr2 = [1, 2, 3];
var arr3 = arr1;
console.log(
	arr1 === arr2,
	arr1 == arr2,
	arr1 === arr3,
	arr1 == arr3
);
// OUTPUT: false false true true

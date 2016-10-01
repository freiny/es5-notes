'use strict';

console.log("abc" === 'abc');
// OUTPUT: true

var a = 'abc';
var b = 'abc';
console.log(a === b);
// OUTPUT: true

console.log(a.length, '1234567'.length);
// OUTPUT: 3 7

a += 'x';
console.log(a);
// OUTPUT: abcx

a += 'yz';
console.log(a);
// OUTPUT: abcxyz

console.log(a.charAt(0), a.charAt(3));
// OUTPUT: a x

console.log(a[1], a[4]);
// OUTPUT: b y

console.log(a.slice(2), a.slice(4));
// OUTPUT: cxyz yz

console.log(a.slice(-1), a.slice(-2), a.slice(-3));
// OUTPUT: z yz xyz

console.log(a.slice(2, 4), a.slice(3,6));
// OUTPUT: cx xyz

console.log(a.split(''));
// OUTPUT: [ 'a', 'b', 'c', 'x', 'y', 'z' ]

console.log('a,b,c'.split(','));
// OUTPUT: [ 'a', 'b', 'c' ]

console.log('\t a-b c \nd\n'.trim());
// OUTPUT:
// a-b c
// d

console.log('h'.concat('ello', ' wo', ' rld'));
// OUTPUT: hello wo rld

console.log('aBcDe'.toLowerCase());
// OUTPUT: abcde

console.log('aBcDe'.toUpperCase());
// OUTPUT: ABCDE

console.log(a.indexOf('a'), a.indexOf('x'));
// OUTPUT: 0 3

console.log('acbcdce'.lastIndexOf('c'));
// OUTPUT: 5
console.log('acbcdce'.lastIndexOf('c', 6));
// OUTPUT: 5
console.log('acbcdce'.lastIndexOf('c', 4));
// OUTPUT: 3

console.log('hello world'.replace('l', '-'));
// OUTPUT: he-lo world

console.log('hello world'.replace(/l/g, '-'));
// OUTPUT: he--o wor-d

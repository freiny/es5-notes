'use strict';

console.log(typeof 10, typeof 10.5);
// OUTPUT: number number

console.log(typeof 'a', typeof 'bcd', typeof "efg");
// OUTPUT: string string string
console.log(typeof '', typeof "");
// OUTPUT: string string

console.log(typeof {'key': 'value'}, typeof {});
// OUTPUT: object object

console.log(typeof [1, 2, 3, 4.7, 'a', "bc"], typeof []);
// OUTPUT: object object

console.log(typeof null, typeof undefined);
// OUTPUT: object undefined

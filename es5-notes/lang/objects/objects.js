'use strict';

var obj = { 'key1': 'a', 'key2': 'b'};
console.log(obj);
// OUTPUT: { key1: a, key2: b}

console.log(obj.key2);
// OUTPUT: b

console.log(obj["key2"]);
// OUTPUT: b

console.log(Object.keys(obj));
// OUTPUT: ['key1', 'key2', 'key3']

var length = Object.keys(obj).length;
console.log(length);
// OUTPUT: 3

// ----------------------------------------------------------------

var person = {};
person['name'] = 'Pat';
person.age = 12;
person.greet = function(){
	console.log('Hi, my name is ' + person.name);
};

person.greet();
// OUTPUT: Hi, my name is Pat

// ----------------------------------------------------------------

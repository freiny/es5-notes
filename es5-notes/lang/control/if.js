'use strict';

if (true) console.log('helloworld');
// OUTPUT: helloworld

var name = 'mel';
if (name.length > 0){
	console.log(name);
}
// OUTPUT: mel

if (typeof obj === 'undefined') {
	console.log('Object is Undefined');
} else {
	console.log('Object is Defined');
}

var age = 32;
if (age >= 21) {
	console.log('Beer Me!');
} else if (age < 21 && age >= 16) {
	console.log('What Country?');
} else {
	console.log('No Beer For You!');
}
// OUTPUT: Beer Me!

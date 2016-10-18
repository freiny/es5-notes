'use strict';

sw(typeof name);
// OUTPUT: UNDEFINED
sw(typeof 'pam');
// OUTPUT: STRING
sw(typeof {'a':1, 'b':2});
// OUTPUT: OBJECT
sw(typeof [1,2,3]);
// OUTPUT: OBJECT
sw(typeof true);
// OUTPUT: UNKNOWN TYPE

function sw(type){
	switch (type){
	case 'undefined':
		console.log('UNDEFINED');
		break;
	case 'object':
		console.log('OBJECT');
		break;
	case 'number':
		console.log('NUMBER');
		break;
	case 'string':
		console.log('STRING');
		break;
	default:
		console.log('UNKNOWN TYPE');
		break;
	}
}

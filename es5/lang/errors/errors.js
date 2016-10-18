'use strict';

try {
	throw new Error('out of memory');
} catch(e) {
	console.log('[CATCH]', e);
} finally {
	console.log('Doing Cleanup');
}
// OUTPUT:
// [CATCH] Error: out of memory
// at Object.<anonymous> ...
// at Module._compile ...
// at Object.Module._extensions..js ...
// at Module.load (module.js ...
// at tryModuleLoad (module.js ...
// ...
// Doing Cleanup

try {
	console.log('Hello World');
} catch(e) {
	console.log('[CATCH]', e);
} finally {
	console.log('Doing Cleanup');
}
// OUTPUT:
// Hello World
// Doing Cleanup

try {
	throw new Error('out of disk space');
} catch(e) {
	console.log('[CATCH]', e);
}

// OUTPUT:
// [CATCH] Error: out of disk space
// at Object.<anonymous> ...
// at Module._compile ...
// at Object.Module._extensions..js ...
// at Module.load (module.js ...
// at tryModuleLoad (module.js ...

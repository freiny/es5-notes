'use strict';

var iterate = function(){
	var i = 0;

	return function(count){
		i = typeof count === 'undefined' ? i : count;

		if (i<0) return;
		console.log(i--);
	};
};

var iter = iterate();
iter(8);
// OUTPUT: 8
iter();
// OUTPUT: 7
iter(4);
// OUTPUT: 4
iter();
// OUTPUT: 3
iter();
// OUTPUT: 2

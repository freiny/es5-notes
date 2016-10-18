var i = 0;

console.log( (i++, i) );
// OUTPUT: 1
console.log( (i=0, i+=4) );
// OUTPUT: 4

var x = 2;
console.log( (i*=x, i*=x) );
// OUTPUT: 16

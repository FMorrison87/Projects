var fib = [1,2,];
var total = 0;

/*for (var i = 2; i < 27; i++) {
	fib[i] = fib[i-2] + fib[i-1];
  if (fib[i] % 2 === 0) {
   total += i
  }
  }
  
  console.log(fib);
  console.log(total); */


  var fib = [1,2,]; //starts the fibonacci sequence
var total = 0;

for (var i = 2; i < 27; i++) {
	fib[i] = fib[i-2] + fib[i-1]; /*This for loop starts after the first two units in the array, adds i to the array if it is a fibonacci number*/
  }
  
  console.log(fib); //prints out the fibonacci sequence
  
  for (var i= 0; i < fib.length + 1; i++){ //loops through the array.
  if (fib[i] % 2) {  //looks for evens
   total += fib[i] //if even, adds number to total
  }
  }
  console.log(total); //prints total
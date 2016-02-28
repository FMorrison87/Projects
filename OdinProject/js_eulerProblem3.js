//This is a function to find prime numbers.
var isPrime = function(number) {
if (number < 2) { //If the number is less than 2 it is 1 and therefore not prime.
	return false;
}
  for (var i = 2; i < number; i++) { //Start the loop at 2, run it as long as i is LESS THAN the number (so the number doesn't check itself) and increment by 1.
  	if (number % i != 0) { //Checks to see if between 1 and the number itself it divides evenly into any number, if not, log it as prime!
    console.log(number);
   }   
      }
  };
isPrime(23);

for (var i = 0; i < 100; i++) {
	isPrime(i);
}



//This is a function to find prime numbers.
var isPrime = function(number) {
if (number < 2) { //If the number is less than 2 it is 1 and therefore not prime.
	return false;
}
  for (var i = 1; i < number; i++) { //Start the loop at 2, run it as long as i is LESS THAN the number (so the number doesn't check itself) and increment by 1.
  	if (number % i === 0) { //Checks to see if between 1 and the number itself it divides evenly into any number, if not, log it as prime!
    return false;
   }   
      }
      return true; //FINISH running the for loop, and THEN return true, because it will be prime!
  };

for (var i = 0; i < 100; i++) {
	if(isPrime(i)) {
  	console.log(i);
  }
}
//THIS IS THE FULL WORKING FUNCTION to find the highest prime factor of the number 600851475143.
//Also this break the hell out of the browser in jsfiddle.

var stupid = 600851475143;

//This is a function to find prime numbers.
function isPrime(number) {
if (number < 2) {
	return false;
}
  for (var i = 2; i < number; i++) { 
  	if (number % i == 0) { 
    return false;
   }
      }
    return true;
  };
//A for loop to loop through a set of numbers using the isPrime function to find primes.
for (var i = 0; i < stupid+1; i++) {
	if(isPrime(i)) {
  	if (stupid % i === 0) { //If a prime number is found, then check if it is a prime factor
  		console.log(i);
  }
}
}
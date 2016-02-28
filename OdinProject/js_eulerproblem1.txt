var total = 0;

for (var i = 1000; i > 0; i--) {
	if (i % 3 ===0 || i % 5 ===0) {
  	total += i;
  }
}

console.log(total);


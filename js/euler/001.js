// find the sum of all multiples of 3 and 5 below 1000

function findSum(max) {
  var maximum = max;
  var total = 0;

  for (var i = 0; i < maximum; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      total = total + i;
    }
  }

  console.log(total);
};

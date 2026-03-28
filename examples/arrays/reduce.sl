# Reduce example (sum of array)

define numbers = [10, 20, 30, 40];

define sum = reduce(numbers, (acc, val) => acc + val, 0);

sldeploy "Sum: " + sum;

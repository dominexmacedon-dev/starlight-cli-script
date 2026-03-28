# Map and filter example

define numbers = [1, 2, 3, 4, 5, 6];

define doubled = map(numbers, (x) => x * 2);
define evens = filter(numbers, (x) => x % 2 == 0);

sldeploy "Doubled: " + doubled;
sldeploy "Evens: " + evens;

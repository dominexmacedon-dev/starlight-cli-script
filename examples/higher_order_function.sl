define numbers = [1, 2, 3, 4, 5, 6]

define even = filter(numbers, (x) => x % 2 == 0)
define squared = map(even, (x) => x * x)

sldeploy squared

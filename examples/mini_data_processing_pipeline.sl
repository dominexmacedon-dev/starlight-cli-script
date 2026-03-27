define data = range(1, 100)

define result = map(
    filter(data, (x) => x % 3 == 0),
    (x) => x * x
)

define sum = reduce(result, (acc, v) => acc + v, 0)

sldeploy sum

define data = range(1, 20)

define pipeline = filter(
    map(data, (x) => x * 2),
    (x) => x % 3 == 0
)

sldeploy pipeline

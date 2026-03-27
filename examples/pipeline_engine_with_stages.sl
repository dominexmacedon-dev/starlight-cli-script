func stage1(data) {
    return map(data, (x) => x + 1)
}

func stage2(data) {
    return filter(data, (x) => x % 2 == 0)
}

func stage3(data) {
    return map(data, (x) => x * 10)
}

define input = range(1, 10)

define output = stage3(stage2(stage1(input)))

sldeploy output

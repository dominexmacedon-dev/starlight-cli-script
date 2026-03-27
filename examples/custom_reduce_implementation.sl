func sumArray(arr) {
    return reduce(arr, (acc, val) => acc + val, 0)
}

define data = [10, 20, 30, 40]

sldeploy sumArray(data)

define arr = [5, 3, 8, 4, 2]

func bubbleSort(a) {
    define n = len(a)

    for (let i = 0; i < n; i = i + 1) {
        for (let j = 0; j < n - i - 1; j = j + 1) {
            if (a[j] > a[j + 1]) {
                define temp = a[j]
                a[j] = a[j + 1]
                a[j + 1] = temp
            }
        }
    }

    return a
}

sldeploy bubbleSort(arr)

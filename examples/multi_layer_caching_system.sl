define L1 = {}
define L2 = {}

func get(key, computeFn) {
    if (has(L1, key)) {
        return L1[key]
    }

    if (has(L2, key)) {
        L1[key] = L2[key]
        return L2[key]
    }

    define value = computeFn()
    L2[key] = value
    L1[key] = value

    return value
}

func expensiveComputation(n) {
    return n * n * n
}

sldeploy get("a", () => expensiveComputation(5))
sldeploy get("a", () => expensiveComputation(5))

func unreliable() {
    define r = random(1, 10)
    if (r > 3) {
        return "success"
    }
    throw "failure"
}

func retry(fn, attempts) {
    define i = 0

    while (i < attempts) {
        do {
            return fn()
        } track {
            sldeploy "Retrying..."
        }
        i = i + 1
    }

    return "failed"
}

sldeploy retry(unreliable, 5)

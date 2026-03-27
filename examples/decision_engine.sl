define rules = [
    (x) => x > 90,
    (x) => x > 75,
    (x) => x > 50
]

func evaluate(score) {
    if (rules[0](score)) {
        return "Excellent"
    }
    if (rules[1](score)) {
        return "Good"
    }
    if (rules[2](score)) {
        return "Average"
    }
    return "Poor"
}

define scores = [45, 60, 80, 95]

define results = map(scores, (s) => evaluate(s))

sldeploy results

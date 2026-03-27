define rawData = [
    { "id": 1, "name": "Alice", "score": 85 },
    { "id": 2, "name": "Bob", "score": 42 },
    { "id": 3, "name": "Charlie", "score": 73 },
    { "id": 4, "name": "Diana", "score": 91 },
    { "id": 5, "name": "Eve", "score": 66 }
]

func extract(data) {
    return data
}

func transform(data) {
    return map(data, (row) => {
        return {
            "id": row.id,
            "name": upper(row.name),
            "score": row.score,
            "passed": row.score >= 60
        }
    })
}

func load(data) {
    define passed = filter(data, (r) => r.passed)
    define failed = filter(data, (r) => !r.passed)

    return {
        "passed": passed,
        "failed": failed
    }
}

define extracted = extract(rawData)
define transformed = transform(extracted)
define loaded = load(transformed)

sldeploy loaded

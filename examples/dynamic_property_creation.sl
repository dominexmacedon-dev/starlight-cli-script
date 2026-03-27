define obj = {}

for (define i = 1; i <= 5; i = i + 1) {
    obj["key" + i] = i * i
}

sldeploy obj

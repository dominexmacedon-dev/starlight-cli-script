func step1(data) {
    return data + " -> validated"
}

func step2(data) {
    return data + " -> processed"
}

func step3(data) {
    return data + " -> completed"
}

func workflow(input) {
    define s1 = step1(input)
    define s2 = step2(s1)
    define s3 = step3(s2)
    return s3
}

define result = workflow("task")

sldeploy result

define queue = []
define workers = 3

func enqueue(job) {
    push(queue, job)
}

func processJob(job) {
    return job.id * job.weight
}

func worker(id) {
    while (len(queue) > 0) {
        define job = pop(queue)
        define result = processJob(job)
        sldeploy "Worker " + id + " processed job " + job.id + " => " + result
    }
}

enqueue({ "id": 1, "weight": 10 })
enqueue({ "id": 2, "weight": 20 })
enqueue({ "id": 3, "weight": 30 })
enqueue({ "id": 4, "weight": 40 })
enqueue({ "id": 5, "weight": 50 })

worker(1)
worker(2)
worker(3)

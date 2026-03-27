define queue = []

func addTask(name, priority) {
    push(queue, { "name": name, "priority": priority })
}

func runScheduler() {
    sort(queue, (a, b) => b.priority - a.priority)

    for task in queue {
        sldeploy "Running: " + task.name
    }
}

addTask("low-task", 1)
addTask("high-task", 10)
addTask("medium-task", 5)

runScheduler()

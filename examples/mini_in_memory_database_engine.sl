define DB = {}

func insert(table, record) {
    if (!has(DB, table)) {
        DB[table] = []
    }
    push(DB[table], record)
}

func select(table, predicate) {
    if (!has(DB, table)) {
        return []
    }
    return filter(DB[table], predicate)
}

func update(table, predicate, updater) {
    for i in range(0, len(DB[table])) {
        if (predicate(DB[table][i])) {
            DB[table][i] = updater(DB[table][i])
        }
    }
}

func delete(table, predicate) {
    define newTable = []

    for row in DB[table] {
        if (!predicate(row)) {
            push(newTable, row)
        }
    }

    DB[table] = newTable
}

insert("users", { "id": 1, "name": "Alice", "age": 25 })
insert("users", { "id": 2, "name": "Bob", "age": 17 })
insert("users", { "id": 3, "name": "Charlie", "age": 30 })

update("users", (u) => u.age < 18, (u) => {
    u.age = 18
    return u
})

define adults = select("users", (u) => u.age >= 18)

sldeploy adults

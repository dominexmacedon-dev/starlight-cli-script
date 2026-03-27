define createUser = (name, age) => {
    return {
        "name": name,
        "age": age,
        "greet": (self) => {
            return "Hello, " + self.name
        }
    }
}

define user = createUser("Alice", 25)

sldeploy user.greet(user)

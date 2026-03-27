define users = {
    "alice": "1234",
    "bob": "abcd"
}

func login(username, password) {
    if (!has(users, username)) {
        return "User not found"
    }

    if (users[username] == password) {
        return "Login successful"
    }

    return "Invalid credentials"
}

sldeploy login("alice", "1234")
sldeploy login("bob", "wrong")

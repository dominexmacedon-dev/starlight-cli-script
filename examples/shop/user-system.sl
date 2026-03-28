# User system

define users = {};

func register(username, balance) {
    users[username] = {
        "balance": balance
    };
    sldeploy "User registered: " + username;
}

func getUser(username) {
    if (!has(users, username)) {
        sldeploy "User not found: " + username;
        return null;
    }
    return users[username];
}

register("alice", 500);
register("bob", 100);

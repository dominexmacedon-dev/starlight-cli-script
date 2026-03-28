# Account creation system

define accounts = {};

func createAccount(name, balance) {
    accounts[name] = {
        "balance": balance
    };

    sldeploy "Account created for " + name + " with balance " + balance;
}

func getAccount(name) {
    if (!has(accounts, name)) {
        sldeploy "Account not found: " + name;
        return null;
    }
    return accounts[name];
}

createAccount("alice", 1000);
createAccount("bob", 500);

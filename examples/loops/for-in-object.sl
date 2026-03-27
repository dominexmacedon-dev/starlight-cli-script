# For-in loop with object

define user = {
    "name": "Alice",
    "age": 25
};

for key in user {
    sldeploy key + ": " + user[key];
}

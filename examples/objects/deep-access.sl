# Deep object access

define data = {
    "user": {
        "profile": {
            "name": "Charlie",
            "age": 28
        }
    }
};

sldeploy "Name: " + data.user.profile.name;
sldeploy "Age: " + data.user.profile.age;

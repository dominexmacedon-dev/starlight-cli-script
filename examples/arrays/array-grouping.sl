# Group numbers by even and odd

define numbers = [1,2,3,4,5,6,7,8];

define groups = {
    "even": [],
    "odd": []
};

for n in numbers {
    if (n % 2 == 0) {
        push(groups["even"], n);
    } else {
        push(groups["odd"], n);
    }
}

sldeploy "Even: " + groups["even"];
sldeploy "Odd: " + groups["odd"];

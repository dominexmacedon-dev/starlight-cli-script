# Starlight Objects Guide

This document explains how objects work in the **Starlight Programming Language**.

Objects are key-value data structures used to represent structured data such as users, configurations, and complex systems.

---

## Overview

| Feature | Description |
|--------|------------|
| Creation | Define objects using `{}` |
| Properties | Store key-value pairs |
| Access | Dot and bracket notation |
| Mutation | Add, update, delete properties |
| Iteration | Loop through keys |
| Nesting | Objects inside objects |

---

## 1. Creating Objects

Objects are defined using curly braces.

```sl
# Create object
let user = {
    "name": "Alice",
    "age": 25
};

# Output object
sldeploy user;
````

---

## 2. Accessing Properties

### Dot Notation

```sl
sldeploy user.name;
```

### Bracket Notation

```sl
sldeploy user["age"];
```

### Comparison

| Method                 | Use Case                 |
| ---------------------- | ------------------------ |
| Dot (`obj.key`)        | Known property names     |
| Bracket (`obj["key"]`) | Dynamic or variable keys |

---

## 3. Updating Properties

```sl
# Update existing property
user.age = 30;

# Add new property
user.city = "New York";

sldeploy user;
```

---

## 4. Deleting Properties

```sl
# Remove property (set to null or undefined behavior)
user.city = null;

sldeploy user;
```

---

## 5. Checking Properties

```sl
if (has(user, "name")) {
    sldeploy "Property exists";
}
```

---

## 6. Looping Through Objects

```sl
for key in user {

    sldeploy key + ": " + user[key];
}
```

---

## 7. Nested Objects

Objects can contain other objects.

```sl
let person = {
    "name": "Bob",
    "address": {
        "city": "London",
        "zip": 12345
    }
};

sldeploy person.address.city;
```

---

## 8. Objects Inside Arrays

```sl
let users = [
    { "name": "Alice", "age": 25 },
    { "name": "Bob", "age": 30 }
];

for item in users {

    sldeploy item.name;
}
```

---

## 9. Merging Objects

```sl
let a = { "x": 1 };
let b = { "y": 2 };

let merged = merge(a, b);

sldeploy merged;
```

---

## 10. Cloning Objects

```sl
let copy = clone(user);

copy.name = "Charlie";

sldeploy user.name;   # original
sldeploy copy.name;   # modified
```

---

## 11. Deep Access (Safe)

```sl
let user = {
    "profile": {
        "name": "Alice"
    }
};

let name = getProp(user, "profile.name", "Unknown");

sldeploy name;
```

---

## 12. Real-World Example

### Simple User System

```sl
let users = {};

# Add user
users["alice"] = { "balance": 100 };

# Access user
let u = users["alice"];

# Update balance
u.balance = u.balance + 50;

sldeploy "Balance: " + u.balance;
```

---

## Best Practices

| Practice                    | Reason                      |
| --------------------------- | --------------------------- |
| Use clear property names    | Improves readability        |
| Prefer dot notation         | Cleaner syntax              |
| Validate keys before access | Avoid errors                |
| Use cloning for copies      | Prevent unintended mutation |

---

## Common Mistakes

| Mistake                    | Problem           |
| -------------------------- | ----------------- |
| Accessing missing property | Returns undefined |
| Modifying shared object    | Side effects      |
| Deep nesting               | Hard to maintain  |
| Using wrong key type       | Access failure    |

---

## Notes

* Objects are dynamically typed
* Keys are typically strings
* Accessing missing properties returns `undefined`
* Objects are mutable
* Nested structures are supported

---

## Summary

Objects are essential for:

* Representing structured data
* Building real-world systems
* Managing application state
* Creating scalable logic

Understanding objects is critical for advanced Starlight programming.

---

## Keywords

starlight objects, object properties, nested objects, object manipulation, scripting language objects, programming objects guide

 

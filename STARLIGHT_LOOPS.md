# Starlight Loops Guide

This document explains how looping works in the **Starlight Programming Language**.

Loops allow you to execute code repeatedly based on conditions or data structures.

---

## Overview

| Loop Type | Description |
|----------|------------|
| while | Repeats while a condition is true |
| for | Classic loop with counter |
| for-in | Iterates over arrays and objects |
| break | Stops a loop early |
| continue | Skips current iteration |

---

## 1. While Loop

The `while` loop runs as long as the condition remains true.

```sl
# Initialize counter
let i = 0;

# Loop condition
while (i < 5) {

    # Output current value
    sldeploy "i: " + i;

    # Increment counter
    i = i + 1;
}
````

### Explanation

| Step           | Description                   |
| -------------- | ----------------------------- |
| Initialization | Set starting value            |
| Condition      | Checked before each iteration |
| Update         | Prevents infinite loop        |

---

## 2. For Loop

The `for` loop is used when the number of iterations is known.

```sl
# Loop from 0 to 4
for (let i = 0; i < 5; i = i + 1) {

    sldeploy "i: " + i;
}
```

### Structure

| Part           | Purpose     |
| -------------- | ----------- |
| Initialization | `let i = 0` |
| Condition      | `i < 5`     |
| Update         | `i = i + 1` |

---

## 3. For-In Loop (Array)

Used to iterate over array elements.

```sl
# Create array
let arr = [10, 20, 30];

# Iterate values
for item in arr {

    sldeploy "Value: " + item;
}
```

---

## 4. For-In Loop (Object)

Used to iterate over object keys.

```sl
# Create object
let user = {
    "name": "Alice",
    "age": 25
};

# Loop through keys
for key in user {

    sldeploy key + ": " + user[key];
}
```

---

## 5. Break Statement

Stops the loop immediately.

```sl
for (let i = 0; i < 10; i = i + 1) {

    if (i == 5) {
        break;
    }

    sldeploy i;
}
```

---

## 6. Continue Statement

Skips the current iteration and moves to the next.

```sl
for (let i = 0; i < 5; i = i + 1) {

    if (i == 2) {
        continue;
    }

    sldeploy i;
}
```

---

## 7. Nested Loops

Loops inside other loops.

```sl
for (let i = 0; i < 3; i = i + 1) {

    for (let j = 0; j < 2; j = j + 1) {

        sldeploy "i: " + i + ", j: " + j;
    }
}
```

---

## 8. Reverse Loop

Loop in reverse order.

```sl
for (let i = 5; i > 0; i = i - 1) {

    sldeploy i;
}
```

---

## 9. Infinite Loop (Use Carefully)

```sl
while (true) {

    sldeploy "Running...";

    break; # prevent infinite execution
}
```

---

## 10. Common Patterns

### Loop Through Array and Modify

```sl
let nums = [1, 2, 3];

for item in nums {

    sldeploy item * 2;
}
```

---

## Best Practices

| Practice                     | Reason                 |
| ---------------------------- | ---------------------- |
| Always update loop variables | Prevent infinite loops |
| Use break carefully          | Avoid unexpected exits |
| Keep loops simple            | Improves readability   |
| Avoid deep nesting           | Reduces complexity     |

---

## Common Mistakes

| Mistake                  | Problem         |
| ------------------------ | --------------- |
| Missing increment        | Infinite loop   |
| Wrong condition          | Loop never runs |
| Using break outside loop | Runtime error   |

---

## Notes

* `for-in` works for both arrays and objects
* Loop variables are dynamically typed
* Conditions must evaluate to boolean
* Avoid complex expressions inside loop conditions

---

## Summary

Loops are essential for:

* Repeating tasks
* Processing arrays and objects
* Building dynamic programs

Mastering loops is a key step in writing efficient Starlight programs.

---

## Keywords

starlight loops, while loop, for loop, for-in loop, scripting language loops, programming iteration, array loops, object loops
 

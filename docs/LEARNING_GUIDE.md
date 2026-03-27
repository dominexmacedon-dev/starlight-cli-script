# Starlight Language Guide

Welcome to **Starlight Language**, a simple and expressive server-side scripting programming language designed for clarity and flexibility.

This guide introduces the core concepts and syntax to help you start writing programs quickly.

---

## 1. Hello World

```sl
sldeploy "Hello, world!"
```

---

## 2. Variables

Variables are declared using the `define` keyword.

```sl
define name = "Alice"
define age = 20
```

### Supported Value Types

| Type    | Example              |
| ------- | -------------------- |
| Number  | `10`, `3.14`         |
| String  | `"hello"`            |
| Boolean | `true`, `false`      |
| Array   | `[1, 2, 3]`          |
| Object  | `{ "a": 1, "b": 2 }` |
| Null    | `null`               |

---

## 3. Output

Use `sldeploy` to print values:

```sl
sldeploy name
sldeploy age
```

---

## 4. Input

Use `ask` to read user input:

```sl
define name = ask("Enter your name:")
sldeploy "Hello " + name
```

---

## 5. Operators

### Arithmetic Operators

| Operator | Description    |
| -------- | -------------- |
| `+`      | Addition       |
| `-`      | Subtraction    |
| `*`      | Multiplication |
| `/`      | Division       |
| `%`      | Modulus        |

Example:

```sl
define result = 10 + 5 * 2
```

---

### Comparison Operators

| Operator | Description           |
| -------- | --------------------- |
| `==`     | Equal                 |
| `!=`     | Not equal             |
| `<`      | Less than             |
| `<=`     | Less than or equal    |
| `>`      | Greater than          |
| `>=`     | Greater than or equal |

---

### Logical Operators

| Operator | Description     |
| -------- | --------------- |
| `AND`    | Logical AND     |
| `OR`     | Logical OR      |
| `??`     | Null coalescing |

Example:

```sl
define x = null ?? 10
```

---

## 6. Conditional Statements

```sl
if (age > 18) {
    sldeploy "Adult"
} else {
    sldeploy "Minor"
}
```

---

## 7. Loops

### While Loop

```sl
define i = 0

while (i < 5) {
    sldeploy i
    i = i + 1
}
```

---

### For Loop

```sl
for (define i = 0; i < 5; i = i + 1) {
    sldeploy i
}
```

---

### For-In Loop

```sl
define arr = [10, 20, 30]

for x in arr {
    sldeploy x
}
```

---

## 8. Functions

### Function Declaration

```sl
func add(a, b) {
    return a + b
}
```

### Function Usage

```sl
define result = add(2, 3)
sldeploy result
```

---

### Arrow Functions

```sl
define add = (a, b) => a + b
```

---

## 9. Arrays

```sl
define arr = [1, 2, 3]

sldeploy arr[0]
```

### Common Array Operations

| Function | Description         |
| -------- | ------------------- |
| `push`   | Add element         |
| `pop`    | Remove last element |

```sl
push(arr, 4)
pop(arr)
```

---

## 10. Objects

```sl
define user = {
    "name": "Alice",
    "age": 20
}

sldeploy user.name
```

---

## 11. Slicing

```sl
define arr = [1, 2, 3, 4, 5]

sldeploy arr[1:4]
sldeploy arr[0:5:2]
```

### Slice Syntax

| Format             | Description        |
| ------------------ | ------------------ |
| `[start:end]`      | Basic slicing      |
| `[start:end:step]` | Step-based slicing |

---

## 12. Error Handling

```sl
do {
    define x = y
} track {
    sldeploy "Error occurred"
}
```

---

## 13. Imports

```sl
import math from "math"
```

### Supported Imports

| Type            | Description           |
| --------------- | --------------------- |
| `.sl` files     | Local modules         |
| Node.js modules | External dependencies |

---

## 14. Built-in Functions

Examples:

```sl
len([1,2,3])
upper("hello")
random(1, 10)
```

### Categories

| Category | Examples         |
| -------- | ---------------- |
| String   | `upper`, `lower` |
| Array    | `push`, `pop`    |
| Math     | `random`         |
| Utility  | `len`            |

---

## 15. Asynchronous Code

```sl
define data = await get("https://api.example.com")
sldeploy data
```

---

## 16. Object Construction

```sl
func Person(name) {
    this.name = name
}

define p = new Person("Alice")
sldeploy p.name
```

---

## 17. Comments

```sl
# This is a comment
```

---

## 18. Language Notes

| Behavior         | Description                       |
| ---------------- | --------------------------------- |
| Undefined values | Treated as `null`                 |
| Function return  | Defaults to `null` if unspecified |
| Data structures  | Dynamic (arrays and objects)      |
| Error reporting  | Includes line and column details  |

---

## 19. Next Steps

* Explore built-in functions
* Write small programs
* Review full syntax reference
* Experiment with custom scripts

---

## Keywords

starlight language, scripting language, programming language tutorial, interpreter language, CLI scripting, custom language design

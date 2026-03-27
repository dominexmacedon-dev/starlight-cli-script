This document explains how importing works in the Starlight language.

Starlight supports importing both:
- `.sl` files (Starlight modules)
- Node.js modules

---

# Importing Starlight Files (.sl)

You can import code from another Starlight file using the `import` statement.

## Basic Syntax

```

import "file.sl"

```

This executes the file and makes its definitions available.

---

## Named Imports

If the language supports named exports (via `define`), you can import specific values:

```

import { name, age } from "user.sl"

```

Example:

**user.sl**
```

define name = "John"
define age = 25

```

**main.sl**
```

import { name, age } from "user.sl"

print(name)
print(age)

```

---

## Import All

```

import * as user from "user.sl"

print(user.name)

```

---

## Relative Paths

Imports are relative to the current file:

```

import "./utils.sl"
import "../lib/math.sl"

```

---

# Importing Node.js Modules

Starlight allows access to Node.js modules.

## Example

```

import fs from "fs"

define content = fs.readFileSync("file.txt", "utf-8")
print(content)

```

---

## Named Imports from Node

```

import { readFileSync } from "fs"

print(readFileSync("file.txt", "utf-8"))

```

---

## Notes

- Node modules behave exactly like in JavaScript
- You can use built-in modules like:
  - fs
  - path
  - os
  - crypto

---

# Default vs Named Imports

## Default Import

```

import fs from "fs"

```

- Imports the entire module
- Access functions via dot notation

---

## Named Import

```

import { readFileSync } from "fs"

```

- Imports only specific functions
- Cleaner and more efficient

---

## Combined Import

```

import fs, { readFileSync } from "fs"

```

---

# Behavior and Rules

- Imports are resolved before execution
- Importing the same file multiple times should not duplicate execution (cached)
- Invalid paths result in runtime errors
- Circular imports may cause unexpected behavior

---

# Error Examples

## File Not Found
```

RuntimeError: Cannot find module './missing.sl'

```

## Invalid Import
```

RuntimeError: Cannot import undefined variable 'x'

```

---

# Best Practices

- Keep modules small and focused
- Use named imports when possible
- Avoid circular dependencies
- Organize files into folders (utils, core, etc.)

---

# End of Imports Documentation

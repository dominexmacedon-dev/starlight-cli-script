This document explains the Starlight error system, including how errors are formatted, how they behave, and how suggestions work.

---

# Overview

Starlight provides a structured error system designed to:

- Be clear and readable
- Avoid exposing internal stack traces
- Help users fix mistakes quickly
- Provide intelligent suggestions when possible

There are two main error types:

- SyntaxError (parser stage)
- RuntimeError (execution stage)

---

# Error Format

Errors are displayed in a clean, minimal format:

```

<ErrorType>: <message>

```

Examples:

```

RuntimeError: Division by zero
SyntaxError: Unexpected token 'else'

```

Errors do NOT include Node.js stack traces.

---

# Syntax Errors

Syntax errors occur during parsing.

They usually indicate:

- Invalid syntax
- Missing tokens
- Unexpected structure

### Example

```

SyntaxError: Unexpected token '}'

```

### When they happen

- Before execution starts
- During `Parser.parse()`

---

# Runtime Errors

Runtime errors occur during execution.

They are thrown intentionally by the evaluator.

### Example

```

RuntimeError: Cannot index null or undefined

```

### Common causes

- Invalid operations
- Type mismatches
- Undefined variables
- Invalid function calls

---

# Common Runtime Errors

### Division by zero

```

RuntimeError: Division by zero

```

### Invalid assignment

```

RuntimeError: Invalid assignment target

```

### Calling non-function

```

RuntimeError: Call to non-function

```

### Indexing error

```

RuntimeError: Cannot index null or undefined

```

### Invalid slice

```

RuntimeError: Slice target must be an array

```

### Invalid loop

```

RuntimeError: Cannot iterate over non-iterable

```

### Import failure

```

RuntimeError: Import not found: myModule

````

---

# Error Context

Errors internally include:

- Source code
- AST node
- Environment (variables in scope)

This allows advanced features like suggestions.

---

# Suggestions System (Did you mean...)

Starlight can suggest corrections when an error occurs.

This is based on:

- Current environment variables
- Known identifiers
- Similar names (string similarity)

---

## Example: Undefined variable

```sl
define count = 10
sldeploy coun
````

Output:

```
RuntimeError: Variable 'coun' is not defined
Did you mean: count ?
```

---

## Example: Misspelled function

```sl
prnt("hello")
```

Output:

```
RuntimeError: Call to non-function
Did you mean: print ?
```

---

# How Suggestions Work

Suggestions are generated using:

* Environment keys (`env.store`)
* String similarity comparison
* Closest matching identifier

The system:

1. Detects unknown identifier
2. Searches similar names
3. Displays best match

---

# Error Propagation

Starlight uses special control signals internally:

* ReturnValue
* BreakSignal
* ContinueSignal

These are NOT shown to users.

They are used to control:

* Function returns
* Loop behavior

---

# Error Wrapping

Unexpected errors are automatically wrapped:

```js
throw new RuntimeError(
  e.message || 'Error in program',
  node,
  source,
  env
);
```

This ensures:

* Consistent formatting
* No crashes
* Helpful context

---

# Try/Catch Equivalent

Starlight uses:

```
doTrack ... handler
```

### Example

```sl
doTrack {
  sldeploy 10 / 0
} handler {
  sldeploy error
}
```

Output:

```
RuntimeError: Division by zero
```

---

# Best Practices

* Always initialize variables
* Validate inputs before operations
* Use doTrack for error handling
* Avoid relying on implicit conversions

---

# Notes

* All errors stop execution unless handled
* Errors are user-friendly by design
* Suggestions improve developer experience
* No raw stack traces are exposed

---

# End of Errors Documentation


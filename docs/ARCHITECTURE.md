This document describes the internal architecture of the Starlight programming language.

It is intended for developers who want to understand or extend the language.

---

# Overview

Starlight follows a classic interpreter pipeline:

```

Source Code → Lexer → Parser → AST → Evaluator

```

Each stage transforms the code into a more structured form until execution.

---

# Lexer

The Lexer (tokenizer) converts raw source code into a stream of tokens.

## Responsibilities

- Read characters from source code
- Group characters into meaningful tokens
- Ignore whitespace and comments
- Track positions for error reporting

## Example

Source:
```

define x = 10

```

Tokens:
```

[DEFINE, IDENTIFIER(x), EQUALS, NUMBER(10)]

```

## Notes

- The lexer does not understand logic or structure
- It only classifies raw text

---

# Parser

The Parser converts tokens into an Abstract Syntax Tree (AST).

## Responsibilities

- Validate syntax
- Enforce grammar rules
- Build structured nodes
- Provide detailed syntax errors

## Example

Tokens:
```

[DEFINE, IDENTIFIER(x), EQUALS, NUMBER(10)]

```

AST:
```

DefineStatement
├── name: "x"
└── value: NumberLiteral(10)

```

## Error Handling

Parser errors stop execution early and produce clean messages:

```

SyntaxError: Unexpected token near '='

```

---

# Abstract Syntax Tree (AST)

The AST is a tree representation of the program.

Each node represents a construct in the language.

## Common Node Types

### Literals
- NumberLiteral
- StringLiteral
- BooleanLiteral
- NullLiteral

### Expressions
- BinaryExpression
- UnaryExpression
- CallExpression
- Identifier

### Statements
- DefineStatement
- IfStatement
- WhileStatement
- ForStatement
- FunctionDeclaration
- ReturnStatement
- SldeployStatement

## Example AST

```

sldeploy(1 + 2)

```

Becomes:

```

CallExpression
├── callee: Identifier(sldeploy)
└── arguments:
BinaryExpression(+)
├── left: NumberLiteral(1)
└── right: NumberLiteral(2)

```

---

# Evaluator

The Evaluator executes the AST.

## Responsibilities

- Traverse AST nodes
- Execute logic
- Manage variables and scope
- Call functions (built-in and user-defined)

## Execution Flow

- Evaluate statements sequentially
- Evaluate expressions recursively
- Return values when needed

## Example

```

define x = 5
sldeploy(x)

```

Execution:
1. Define variable `x`
2. Store value `5`
3. Call `sldeploy` with value `5`

---

# Environment System

The Environment manages variables and scope.

## Structure

Each environment contains:

- A map of variable names → values
- A reference to a parent environment

## Scope Chain

```

Global → Function → Block

```

If a variable is not found in the current scope:
- It searches upward through parent environments

---

## Example

```

define x = 10

func test() {
define x = 20
sldeploy(x)
}

test()
sldeploy(x)

```

Output:
```

20
10

```

Explanation:
- Inner `x` shadows outer `x`
- Global value remains unchanged

---

## Variable Resolution

When accessing a variable:

1. Check current environment
2. If not found → check parent
3. Continue until global scope
4. If still not found → runtime error

---

## Mutation

Variables can be updated within their scope:

```

define x = 5
x = 10

```

The environment updates the existing binding.

---

# Function Execution

Functions create a new environment.

## Behavior

- Parameters are defined in the new scope
- Local variables stay inside function
- Outer variables remain accessible (closure)

---

## Example

```

func add(a, b) {
return a + b
}

sldeploy(add(2, 3))

```

---

# Built-in Functions

Built-ins are defined in the global environment at startup.

Example:

```

this.global.define('sldeploy', fn)

```

They behave like normal functions but are implemented in JavaScript.

---

# Error Propagation

- Lexer errors → stop immediately
- Parser errors → stop before execution
- Runtime errors → thrown during evaluation

Errors include source context and messages.

---

# Design Principles

- Simplicity over complexity
- Clear error reporting
- Predictable execution model
- JavaScript interoperability

---

# Extending Starlight

To extend the language:

1. Add tokens in Lexer
2. Update grammar in Parser
3. Implement evaluation logic
4. Register built-ins if needed

---

# End of Architecture Documentation

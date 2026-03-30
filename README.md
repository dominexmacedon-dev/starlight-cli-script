# Starlight Language (starlight-programming-lang)

<p align="center">
  <img src="starlight-lang-logo.png" alt="Starlight Language Logo" width="320"/>
</p>

**Starlight Language** is a lightweight server-side scripting programming language built with JavaScript. It provides a custom interpreter and command-line interface (CLI) runtime for executing `.sl` scripts.

This project is designed for learning, experimentation, and understanding how programming languages and interpreters work internally.

---

## Logo Variants

<p align="center">
  <img src="starlight-lang-logo.png" width="300"/>
</p>

<p align="center">
  <img src="starlight-lang-logo.png" width="180"/>
</p>

<p align="center">
  <img src="starlight-lang-logo.png" width="100"/>
</p>

---

## Screenshots

<p align="center">
  <img src="screenshots/Screenshot (610).png" width="700"/>
  <img src="screenshots/Screenshot (611).png" width="700"/>
  <img src="screenshots/Screenshot (612).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (614).png" width="700"/>
  <img src="screenshots/Screenshot (615).png" width="700"/>
  <img src="screenshots/Screenshot (616).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (617).png" width="700"/>
  <img src="screenshots/Screenshot (618).png" width="700"/>
  <img src="screenshots/Screenshot (619).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (620).png" width="700"/>
  <img src="screenshots/Screenshot (621).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (623).png" width="700"/>
  <img src="screenshots/Screenshot (624).png" width="700"/>
  <img src="screenshots/Screenshot (625).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (626).png" width="700"/>
  <img src="screenshots/Screenshot (627).png" width="700"/>
  <img src="screenshots/Screenshot (628).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (629).png" width="700"/>
  <img src="screenshots/Screenshot (630).png" width="700"/>
  <img src="screenshots/Screenshot (631).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (632).png" width="700"/>
  <img src="screenshots/Screenshot (633).png" width="700"/>
  <img src="screenshots/Screenshot (634).png" width="700"/>
</p>

<p align="center">
  <img src="screenshots/Screenshot (635).png" width="700"/>
  <img src="screenshots/Screenshot (636).png" width="700"/>
  <img src="screenshots/Screenshot (637).png" width="700"/>
  <img src="screenshots/Screenshot (639).png" width="700"/>
  <img src="screenshots/Screenshot (640).png" width="700"/>
</p>

---

## Overview

Starlight Language is focused on simplicity and clarity. It demonstrates the full pipeline of a programming language, from lexical analysis to execution.

| Feature           | Description                                  |
| ----------------- | -------------------------------------------- |
| Type              | Server-side scripting language               |
| Runtime           | CLI-based                                    |
| Implementation    | JavaScript (Node.js)                         |
| Execution Model   | Interpreted (Lexer → Parser → Evaluator)     |
| Primary Use Cases | Learning, backend scripting, experimentation |

---

## Installation

Install globally using npm:

```bash
npm install -g starlight-cli
````

---

## Quick Start

Run a Starlight script:

```bash
starlight file.sl
```

Or using Node.js:

```bash
node starlight.js file.sl
```

---

## Example

```sl
sldeploy("Hello, Starlight");
```

---

## Execution Pipeline

| Stage      | File           | Description                       |
| ---------- | -------------- | --------------------------------- |
| Input      | `.sl` file     | Source code                       |
| Lexing     | `lexer.js`     | Converts source code into tokens  |
| Parsing    | `parser.js`    | Builds Abstract Syntax Tree (AST) |
| Evaluation | `evaluator.js` | Executes AST                      |
| Output     | —              | Final result                      |

---

## Project Structure

```plaintext
starlight-language/
├── lexer.js
├── parser.js
├── evaluator.js
├── starlight.js
├── examples/
├── screenshots/
└── README.md
```

---

## Core Components

### Lexer (`lexer.js`)

| Responsibility | Details                                    |
| -------------- | ------------------------------------------ |
| Tokenization   | Converts source into tokens                |
| Recognition    | Keywords, operators, identifiers, literals |
| Output         | Token stream                               |

---

### Parser (`parser.js`)

| Responsibility  | Details              |
| --------------- | -------------------- |
| Syntax Analysis | Validates structure  |
| Transformation  | Tokens → AST         |
| Output          | Abstract Syntax Tree |

---

### Evaluator (`evaluator.js`)

| Responsibility   | Details                |
| ---------------- | ---------------------- |
| Execution        | Interprets AST         |
| Runtime Behavior | Handles logic and flow |
| Output           | Program result         |

---

### CLI Runtime (`starlight.js`)

| Responsibility | Details                 |
| -------------- | ----------------------- |
| Entry Point    | CLI execution           |
| File Handling  | Reads `.sl` scripts     |
| Integration    | Connects all components |

---

## Use Cases

| Use Case          | Description             |
| ----------------- | ----------------------- |
| Learning          | Understand interpreters |
| Backend Scripting | CLI automation          |
| Experimentation   | Language design testing |

---

## Project Goals

* Build a simple and understandable programming language
* Demonstrate interpreter architecture
* Provide a base for future extensions

---

## Future Improvements

| Feature          | Status      |
| ---------------- | ----------- |
| Variables        | Planned     |
| Functions        | Planned     |
| Control Flow     | In Progress |
| Error Handling   | Planned     |
| Standard Library | Planned     |
| Package System   | Planned     |

---

## Concepts Covered

* Programming language design
* Lexical analysis
* Parsing and AST
* Interpretation
* CLI tool development

---

## Keywords

starlight language, scripting language, interpreter, compiler design, AST, lexer, parser, CLI runtime, programming language development

---

## Contributing

Contributions are welcome:

* Fork the repository
* Submit improvements
* Propose new features

---

## License

This project is open-source and intended for educational and experimental use.
 

This document explains how to use the Starlight Command Line Interface (CLI).

---

# Overview

The Starlight CLI allows you to:

- Run `.sl` source files
- Render Markdown documentation
- Use an interactive editor
- Access help and learning resources

---

# Basic Usage

```bash
starlight <file.sl>
````

Runs a Starlight source file.

---

# Commands

## Run a File

```bash
starlight program.sl
```

Executes the given `.sl` file.

---

## Render Markdown

```bash
starlight README.md
```

* Converts Markdown to HTML
* Opens it in your default browser
* Supports:

  * Tables
  * Code blocks
  * Task lists
  * Footnotes

---

## Show Version

```bash
starlight -v
starlight --version
```

Displays CLI version.

---

## Help

```bash
starlight --help
```

Shows available commands and usage.

---

## Learning Guide

```bash
starlight --learn
```

Opens the official learning guide in your browser.

---

## Interactive Editor

```bash
starlight --writedirectly
```

Starts an interactive coding session.

### How it works

* Type Starlight code line by line
* Syntax highlighting is applied
* Use:

```
:run
```

to execute the code

---

# Interactive Mode Details

### Example

```
> define x = 10
> sldeploy x
> :run
```

After running:

* Code is executed
* You are prompted to save the file

---

## Save Prompt

After execution:

```
Do you want to save this code? (y/n):
```

If `y`:

1. Enter folder path
2. Enter file name
3. File will be saved as `.sl`

---

# File Type Handling

## .sl files

* Parsed and executed by:

  * Lexer
  * Parser
  * Evaluator

## .md files

* Rendered to HTML
* Opened in browser

## Other extensions

```
Incorrect file extension. Create .sl or .md to be able to run correctly.
```

---

# Error Handling

### Syntax Errors

* Caught during parsing
* Displayed cleanly (no Node.js stack trace)

### Runtime Errors

* Displayed with message only
* Program exits safely

### Unexpected Errors

* Shown as:

```
Unexpected Error: <message>
```

---

# Output Behavior

### sldeploy

Prints formatted output.

### print()

Prints raw value.

---

# Exit Behavior

After execution:

* CLI waits for key press before exit
* Prevents terminal from closing immediately

---

# Internal Features

## Syntax Highlighting

Interactive mode highlights:

* Strings
* Numbers
* Keywords

## Markdown Renderer

Uses:

* markdown-it
* task lists plugin
* footnotes plugin

## Browser Opening

* Windows → start
* macOS → open
* Linux → xdg-open

---

# Examples

## Run a file

```bash
starlight app.sl
```

## Render docs

```bash
starlight docs.md
```

## Start editor

```bash
starlight --writedirectly
```

---

# Notes

* Interactive editor uses temporary files
* Files are auto-deleted after execution unless saved
* Markdown preview files are temporary
* CLI is cross-platform

---

# End of CLI Documentation

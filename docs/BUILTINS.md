# Starlight Language Built-in Functions Reference

This document provides a complete reference for all **built-in functions available in Starlight Language**. These functions are globally available and require no import.

---

## 1. String Functions

| Function                            | Description                      |
| ----------------------------------- | -------------------------------- |
| `lower(str)`                        | Convert string to lowercase      |
| `upper(str)`                        | Convert string to uppercase      |
| `trim(str)`                         | Remove whitespace from both ends |
| `trimStart(str)`                    | Remove whitespace from start     |
| `trimEnd(str)`                      | Remove whitespace from end       |
| `capitalize(str)`                   | Capitalize first character       |
| `reverseStr(str)`                   | Reverse string                   |
| `startsWith(str, prefix)`           | Check prefix                     |
| `endsWith(str, suffix)`             | Check suffix                     |
| `includes(str, substr)`             | Check substring                  |
| `repeat(str, times)`                | Repeat string                    |
| `repeatStr(str, times)`             | Alias of `repeat`                |
| `replace(str, search, replacement)` | Replace occurrences              |
| `split(str, separator)`             | Split into array                 |
| `join(arr, separator)`              | Join array into string           |
| `substring(str, start, end)`        | Extract substring                |
| `padStart(str, length, pad)`        | Pad at start                     |
| `padEnd(str, length, pad)`          | Pad at end                       |
| `camelCase(str)`                    | Convert to camelCase             |
| `kebabCase(str)`                    | Convert to kebab-case            |
| `encodeURLComponent(str)`           | URL encode string                |

---

## 2. Math Functions

| Function                 | Description                    |
| ------------------------ | ------------------------------ |
| `floor(num)`             | Round down                     |
| `ceil(num)`              | Round up                       |
| `round(num)`             | Round to nearest               |
| `abs(num)`               | Absolute value                 |
| `pow(base, exp)`         | Power                          |
| `sqrt(num)`              | Square root                    |
| `min(...nums)`           | Minimum value                  |
| `max(...nums)`           | Maximum value                  |
| `random(min, max)`       | Random integer (exclusive max) |
| `randomInt(min, max)`    | Random integer (inclusive max) |
| `randomFloat(min, max)`  | Random float                   |
| `clamp(value, min, max)` | Clamp value                    |
| `sign(value)`            | Return sign                    |
| `lerp(a, b, t)`          | Linear interpolation           |
| `degToRad(deg)`          | Degrees to radians             |
| `radToDeg(rad)`          | Radians to degrees             |

---

## 3. Array Functions

| Function                     | Description           |
| ---------------------------- | --------------------- |
| `map(array, fn)`             | Transform array       |
| `filter(array, fn)`          | Filter elements       |
| `reduce(array, fn, initial)` | Reduce to value       |
| `push(arr, value)`           | Add element to end    |
| `pop(arr)`                   | Remove last element   |
| `shift(arr)`                 | Remove first element  |
| `unshift(arr, value)`        | Add element to start  |
| `sort(arr, fn?)`             | Sort array            |
| `reverse(arr)`               | Reverse array         |
| `unique(arr)`                | Remove duplicates     |
| `uniqueBy(arr, fn)`          | Unique by key         |
| `indexOf(arr, value)`        | Find index            |
| `includesArr(arr, value)`    | Check existence       |
| `flatten(arr)`               | Flatten nested arrays |
| `randomChoice(arr)`          | Select random element |
| `count(arr, value)`          | Count occurrences     |
| `range(start?, end, step?)`  | Generate range        |

---

## 4. File System Functions

| Function                    | Description                  |
| --------------------------- | ---------------------------- |
| `readFile(path)`            | Read file as string          |
| `writeFile(path, content)`  | Write file                   |
| `appendFile(path, content)` | Append to file               |
| `deleteFile(path)`          | Delete file                  |
| `exists(path)`              | Check existence              |
| `mkdir(path)`               | Create directory             |
| `rmdir(path)`               | Remove directory recursively |
| `readJSON(path)`            | Read JSON file               |
| `writeJSON(path, obj)`      | Write JSON file              |

---

## 5. Network Functions

| Function              | Description                 |
| --------------------- | --------------------------- |
| `fetch(url, options)` | Perform HTTP request        |
| `get(url)`            | GET request returning JSON  |
| `post(url, data)`     | POST request returning JSON |

### Fetch Return Object

| Property | Description               |
| -------- | ------------------------- |
| `status` | HTTP status code          |
| `ok`     | Boolean success indicator |
| `text()` | Returns response text     |
| `json()` | Returns parsed JSON       |

---

## 6. Object Functions

| Function                      | Description          |
| ----------------------------- | -------------------- |
| `keys(obj)`                   | Get keys             |
| `values(obj)`                 | Get values           |
| `entries(obj)`                | Get key-value pairs  |
| `has(obj, key)`               | Check property       |
| `hasOwn(obj, key)`            | Safe property check  |
| `merge(obj1, obj2)`           | Shallow merge        |
| `mergeDeep(obj1, obj2)`       | Deep merge           |
| `invert(obj)`                 | Swap keys and values |
| `clone(obj)`                  | Shallow copy         |
| `deepClone(obj)`              | Deep copy            |
| `getProp(obj, path, default)` | Safe access          |
| `setProp(obj, path, value)`   | Set nested value     |

---

## 7. Conversion and Type Functions

| Function        | Description                 |
| --------------- | --------------------------- |
| `toStr(value)`  | Convert to string           |
| `str(value)`    | Alias for string conversion |
| `num(value)`    | Convert to number           |
| `type(value)`   | Basic type                  |
| `typeOf(value)` | Extended type detection     |
| `isNaN(value)`  | Check NaN                   |
| `len(value)`    | Length of value             |

---

## 8. Date and Time Functions

| Function                                 | Description       |
| ---------------------------------------- | ----------------- |
| `now()`                                  | Current timestamp |
| `timestamp()`                            | Alias for now     |
| `formatDate(timestamp, locale, options)` | Format date       |

---

## 9. Utility Functions

| Function            | Description     |
| ------------------- | --------------- |
| `uuid()`            | Generate UUID   |
| `randomChoice(arr)` | Random element  |
| `sleep(ms)`         | Delay execution |
| `print(value)`      | Console output  |
| `ask(prompt)`       | User input      |

---

## 10. JSON Functions

| Function             | Description            |
| -------------------- | ---------------------- |
| `JSONParse(str)`     | Parse JSON string      |
| `JSONStringify(obj)` | Convert to JSON string |

---

## 11. Notes and Edge Cases

| Case              | Behavior                                   |
| ----------------- | ------------------------------------------ |
| Type conversion   | Automatic where possible                   |
| Invalid input     | May throw runtime error                    |
| Array functions   | Require valid arrays                       |
| File operations   | Synchronous execution                      |
| Network functions | Asynchronous execution                     |
| `reduce()`        | Fails on empty array without initial value |
| `range()`         | Step cannot be zero                        |

---

## Keywords

starlight language built-in functions, scripting language standard library, programming language functions, interpreter builtins, string math array functions, CLI scripting utilities

# Starlight Arrays Guide

This document explains how arrays work in the **Starlight Programming Language**.

Arrays are ordered collections of values and are essential for handling lists, sequences, and grouped data.

---

## Overview

| Feature | Description |
|--------|------------|
| Creation | Define arrays using `[]` |
| Indexing | Access elements by position |
| Slicing | Extract portions of arrays |
| Mutation | Add/remove elements |
| Iteration | Loop through values |
| Transformation | map, filter, reduce |

---

## 1. Creating Arrays

Arrays are defined using square brackets.

```sl
# Create array
let arr = [1, 2, 3, 4];

# Output array
sldeploy arr;
````

---

## 2. Accessing Elements

Use index positions (starting from 0).

```sl
let fruits = ["apple", "banana", "cherry"];

sldeploy fruits[0]; # apple
sldeploy fruits[1]; # banana
```

---

## 3. Updating Elements

```sl
let arr = [10, 20, 30];

# Update value
arr[1] = 50;

sldeploy arr;
```

---

## 4. Array Length

```sl
let arr = [1, 2, 3];

sldeploy len(arr); # 3
```

---

## 5. Slicing Arrays

Extract a portion of an array.

```sl
let arr = [1, 2, 3, 4, 5];

# Slice from index 1 to 4
let part = arr[1:4];

sldeploy part; # [2,3,4]
```

### Slice Variants

| Syntax     | Description                   |
| ---------- | ----------------------------- |
| arr[a:b]   | From index a to b (exclusive) |
| arr[a:b:c] | With step value               |
| arr[:b]    | From start to b               |
| arr[a:]    | From a to end                 |

---

## 6. Slice with Step

```sl
let arr = [1, 2, 3, 4, 5, 6];

# Every 2nd element
let result = arr[0:6:2];

sldeploy result; # [1,3,5]
```

---

## 7. Adding and Removing Elements

```sl
let arr = [1, 2, 3];

# Add element to end
push(arr, 4);

# Remove last element
pop(arr);

sldeploy arr;
```

---

## 8. Looping Through Arrays

```sl
let arr = [10, 20, 30];

for item in arr {

    sldeploy item;
}
```

---

## 9. Map (Transform Array)

Apply a function to each element.

```sl
let nums = [1, 2, 3];

let doubled = map(nums, (x) => x * 2);

sldeploy doubled;
```

---

## 10. Filter (Select Values)

Keep elements that match a condition.

```sl
let nums = [1, 2, 3, 4, 5];

let evens = filter(nums, (x) => x % 2 == 0);

sldeploy evens;
```

---

## 11. Reduce (Aggregate Values)

Combine all elements into a single value.

```sl
let nums = [10, 20, 30];

let total = reduce(nums, (acc, val) => acc + val, 0);

sldeploy total;
```

---

## 12. Nested Arrays

Arrays can contain other arrays.

```sl
let arr = [[1,2], [3,4]];

sldeploy arr[0][1]; # 2
```

---

## 13. Common Patterns

### Sum Array

```sl
let nums = [1, 2, 3];

let total = reduce(nums, (a, b) => a + b, 0);

sldeploy total;
```

### Find Maximum

```sl
let nums = [5, 10, 3];

let maxVal = max(...nums);

sldeploy maxVal;
```

---

## Best Practices

| Practice                               | Reason              |
| -------------------------------------- | ------------------- |
| Use map/filter for transformations     | Cleaner code        |
| Avoid modifying array during iteration | Prevent bugs        |
| Use slicing for copies                 | Safer than mutation |
| Keep arrays consistent                 | Easier debugging    |

---

## Common Mistakes

| Mistake                    | Problem             |
| -------------------------- | ------------------- |
| Access out-of-bounds index | Returns undefined   |
| Step = 0 in slice          | Runtime error       |
| Wrong reduce usage         | Incorrect results   |
| Modifying while looping    | Unexpected behavior |

---

## Notes

* Arrays are dynamically sized
* Indexing starts at 0
* Out-of-range access returns `undefined`
* Slicing does not modify the original array
* Functions like `map`, `filter`, `reduce` return new arrays

---

## Summary

Arrays are essential for:

* Storing lists of data
* Processing collections
* Performing transformations
* Building real-world applications

Mastering arrays is critical for writing efficient Starlight programs.

---

## Keywords

starlight arrays, array slicing, map filter reduce, scripting arrays, programming arrays guide, array operations

 

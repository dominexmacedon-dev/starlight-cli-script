# Higher-order function

func applyOperation(a, b, operation) {
    return operation(a, b);
}

define add = (x, y) => x + y;
define multiply = (x, y) => x * y;

sldeploy "Add: " + applyOperation(3, 4, add);
sldeploy "Multiply: " + applyOperation(3, 4, multiply);

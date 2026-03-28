# Recursive function (factorial)

func factorial(n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

sldeploy "Factorial of 5: " + factorial(5);

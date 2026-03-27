define sum = 0

for (let i = 1; i <= 5; i = i + 1) {
    sum = sum + i
}

sldeploy "Total:"
sldeploy sum

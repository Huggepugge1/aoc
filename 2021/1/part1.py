ans = 0
with open("input.txt", "r") as f:
    last = 100000000000
    while line := f.readline()[:-1]:
        if int(line) > last:
            ans += 1
        last = int(line)

print(ans)

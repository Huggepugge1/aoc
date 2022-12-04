ans = 0
with open("input.txt", "r") as f:
    last = 0
    last = [int(f.readline()[:-1]) for _ in range(3)]
    while line := f.readline()[:-1]:
        if int(line) > last[0]:
            ans += 1
        last = [last[1], last[2], int(line)]
        

print(ans)

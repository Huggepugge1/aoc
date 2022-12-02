elves = [0 for i in range(1000000)]
i = 0
with open("input.txt", "r") as f:
    while line := f.readline():
        if line == "\n":
            i += 1
        else:
            elves[i] += int(line)

print(sorted(elves)[-1])

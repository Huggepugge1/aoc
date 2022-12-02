opponent = ["A", "B", "C"]
you = ["X", "Y", "Z"]
ans = 0

with open("input.txt", "r") as f:
    while line := f.readline():
        ans += you.index(line.split()[1]) + 1
        if opponent[you.index(line.split()[1]) - 1] == line.split()[0]:
            ans += 6
        elif you.index(line.split()[1]) == opponent.index(line.split()[0]):
            ans += 3

print(ans)

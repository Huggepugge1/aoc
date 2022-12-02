opponent = ["A", "B", "C"]
ans = 0

with open("input.txt", "r") as f:
    while line := f.readline():
        if line.split()[1] == 'X':
            ans += (opponent.index(line.split()[0]) - 1) % 3 + 1
        elif line.split()[1] == 'Y':
            ans += opponent.index(line.split()[0]) + 4
        else:
            ans += (opponent.index(line.split()[0]) + 1) % 3 + 7

print(ans)

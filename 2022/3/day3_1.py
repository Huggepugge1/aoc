import string

priority = [*string.ascii_lowercase, *string.ascii_uppercase]
ans = 0

with open("input.txt", "r") as f:
    while line := f.readline():
        for c in line[:len(line) // 2]:
            if c in line[len(line) // 2:]:
                print(c)
                ans += priority.index(c) + 1
                break

print(ans)

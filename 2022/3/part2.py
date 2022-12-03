import string

priority = [*string.ascii_lowercase, *string.ascii_uppercase]
ans = 0

with open("input.txt", "r") as f:
    while line1 := f.readline():
        line2 = f.readline()
        line3 = f.readline()

        for c in line1:
            if c in line2 and c in line3:
                ans += priority.index(c) + 1
                break

print(ans)

ans = 0
with open("input.txt", "r") as f:
    while line := f.readline():
        ranges = line[:-1].split(",")
        ranges = [i.split("-") for i in ranges]

        if int(ranges[0][0]) <= int(ranges[1][0]) and int(ranges[0][1]) >=int(ranges[1][1]):
            ans += 1
        elif int(ranges[1][0]) <= int(ranges[0][0]) and int(ranges[1][1]) >= int(ranges[0][1]):
            ans += 1

print(ans)

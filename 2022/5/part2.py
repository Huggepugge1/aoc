ans = ""
crates = [[] for i in range(9)]
with open("input.txt", "r") as f:
    while line := f.readline()[:-1]:
        if "1" in line:
            break

        for i in range(0, len(line), 4):
            if line[i + 1] != " ":
                crates[i // 4].insert(0, line[i + 1])
    
    f.readline()
    while line := f.readline()[:-1]:
        temp = []
        for i in range(int(line.split()[1])):
            temp.insert(0, crates[int(line.split()[3]) - 1].pop())
        for i in range(int(line.split()[1])):
            crates[int(line.split()[5]) - 1].append(temp[i])

print(''.join(map(lambda x: x[len(x) - 1], crates)))

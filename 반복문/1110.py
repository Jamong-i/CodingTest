n = int(input())
answer = n
i = 0

while True:
    i += 1
    answer = (answer % 10 + answer // 10) % 10 + (answer % 10) * 10
    if n == answer:
        break

print(i)
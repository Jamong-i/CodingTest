hour, mint = map(int, input().split())
time = int(input())

mint += time

if mint >= 60:
    for i in range(mint // 60):
        mint -= 60
        hour += 1
    if hour >= 24:
        for i in range(hour // 24):
            hour -= 24

print(hour, mint)

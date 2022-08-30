hour, mint = map(int, input().split())

mint -= 45

if mint < 0:
    hour -= 1
    mint += 60
    if hour < 0:
        hour += 24

print(hour, mint)

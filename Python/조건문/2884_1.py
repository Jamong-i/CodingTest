hour, mint = map(int, input().split())

mint = (hour * 60) + (mint - 45)

print(mint // 60 % 24, mint % 60)
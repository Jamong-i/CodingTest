hour, mint = map(int, input().split())
time = int(input())

mint = (hour * 60) + (mint + time)

print(mint // 60 % 24, mint % 60)

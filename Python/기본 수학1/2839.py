import sys

input = lambda: sys.stdin.readline().rstrip()

orderSolat = int(input())
threeSolat = 3
fiveSolat = 5
count = 0

# 5Kg으로 나누고 0으로 안떨어지면 3Kg 한번 덜어내는 방식
while orderSolat >= 0:
    if orderSolat % fiveSolat == 0:
        count += (orderSolat // fiveSolat)
        print(count)
        break

    orderSolat -= 3
    count += 1
else:
        print(-1)
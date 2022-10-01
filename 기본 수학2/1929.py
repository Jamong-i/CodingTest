import sys

input = lambda: sys.stdin.readline().rstrip().split()

minM, maxN = map(int, input())
# numList = list(range(minM, maxN + 1))

# 에라토스테네스의 체
# 소수 탐색 maxN까지
n = maxN

sieve = [False, False] + [True] * (n - 1)
decimal = []

for i in range(2, n + 1):
    if sieve[i]:
        decimal.append(i)
        for j in range(2 * i, n + 1, i):
            sieve[j] = False

for i in range(len(decimal)):
    if decimal[i] >= minM:
        print(decimal[i])

# # 소수 탐색하기
# for i in range(maxN - minM + 1):
#     if numList[i] in decimal:
#         print(numList[i])

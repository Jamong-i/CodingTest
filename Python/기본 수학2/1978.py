import sys

input = lambda: sys.stdin.readline().rstrip()

# 개수 n을 등록
n = int(input())
numList = [0 for i in range(n)]

# 수 받기
num = list(map(int, input().split()))

# n개의 수 보다 많이 받으면 에러
for i in range(len(num)):
    numList[i] = num[i]

# 소수 찾기 (에라토스테네스의 체)
# 1000이하의 자연수
n = 1000

# 체
sieve = [False, False] + [True] * (n - 1)
decimal = []

# 2부터 n+1까지
for i in range(2, n+1):
    if sieve[i]:
        decimal.append(i)
        # ex) i가 2일때 2의 배수들은 모두 False가 되어서 위에 if문에서 자동적으로 걸러진다.
        for j in range(2*i, n+1, i):
            sieve[j] = False

# 소수 몇 개 있는지 확인하기
count = 0
for i in range(len(num)):
    if numList[i] in decimal:
        count += 1

print(count)
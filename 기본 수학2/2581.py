import sys

input = lambda: sys.stdin.readline().rstrip()

minNum = int(input())
maxNum = int(input())

numlist = [i for i in range(minNum, maxNum+1)]

# 제한 max는 10000이하의 자연수
n = 10000

# 체
sieve = [False, False] + [True] * (n - 1)
decimal = []

# 2부터 n+1 까지
for i in range(2, n+1):
    if sieve[i]:
        decimal.append(i)
        # ex) i가 2일때 2의 배수들은 모두 False가 되어서 위에 if문에서 자동적으로 걸러진다.
        for j in range(2*i, n+1, i):
            sieve[j] = False

# 소수 몇 개 인지 구하기
count = 0
sumList= []

for i in range(maxNum+1-minNum):
    if numlist[i] in decimal:
        sumList.append(numlist[i])
        count += 1

print("-1" if count == 0 else(f"{sum(sumList)}\n{min(sumList)}"))
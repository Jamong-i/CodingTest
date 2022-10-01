import sys

input = lambda: sys.stdin.readline().rstrip()

while True:
    n = 2 * int(input())

    # 입력값 0 이면 스탑
    if n == 0:
        break
    else:
        sieve = [False, False] + [True] * (n - 1)
        decimal = []

        for i in range(2, n + 1):
            if sieve[i]:
                decimal.append(i)
                for j in range(2 * i, n + 1, i):
                    sieve[j] = False

        minN = n // 2
        count = 0
        for i in range(len(decimal)):
            if decimal[i] > minN:
                count += 1

        print(count)

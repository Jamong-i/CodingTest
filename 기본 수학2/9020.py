import sys

input = lambda: sys.stdin.readline().rstrip()

num = int(input())


def sieveOfEratosthenes():
    n = int(input())

    sieve = [False, False] + [True] * (n - 1)

    for i in range(2, n + 1):
        if sieve[i]:
            for j in range(2 * i, n + 1, i):
                sieve[j] = False

    # 입력값이 짝수일때 실행
    if n % 2 == 0:
        numA = n // 2
        numB = numA

        for _ in range(n):
            if sieve[numA] and sieve[numB]:
                print(numA, numB)
                break
            numA -= 1
            numB += 1


for _ in range(num):
    sieveOfEratosthenes()
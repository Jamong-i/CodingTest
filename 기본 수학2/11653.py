import sys

input = lambda: sys.stdin.readline().rstrip()

num = int(input())


# 소인수분해 함수
def factorization(num):
    # 1 이하의 수를 받으면 종료
    if num <= 1:
        return

    # 제한 10000000
    n = 10000000

    # 체
    sieve = [False, False] + [True] * (n - 1)
    decimal = []

    for i in range(2, n+1):
        if sieve[i]:
            decimal.append(i)
            # ex) i가 2일때 2의 배수들은 모두 False가 되어서 위에 if문에서 자동적으로 걸러진다.
            for j in range(2*i, n+1, i):
                sieve[j] = False

    i = 0
    while True:
        if num % decimal[i] == 0:
            num = num // decimal[i]
            print(decimal[i])
            if num == decimal[i]:
                print(decimal[i])
                break
            else:
                continue

        elif num <= 1:
            break

        elif num % decimal[i] != 0:
            i += 1


factorization(num)
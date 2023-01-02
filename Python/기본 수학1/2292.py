import sys

input = lambda: sys.stdin.readline().rstrip()

num = int(input())
n = 0

if num == 1:
    print("1")
else:
    # 등차수열 1 + (3 (n (n - 1)에서 3n^2 - 3n + 1로 변형
    while 3*n*n - 3*n + 1 < num:
        n += 1
    print(n)
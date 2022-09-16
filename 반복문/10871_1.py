import sys

x, n = map(int, sys.stdin.readline().rstrip().split())
a = list(map(int, sys.stdin.readline().rstrip().split()))
answer = list()

for i in range(x):
    if a[i] < n:
        answer.append(str(a[i]))

print(*answer)
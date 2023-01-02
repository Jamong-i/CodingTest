import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))


def ascend_sort(ascend):
    ascend = sorted(ascend)
    print(*ascend, sep="\n")


ascend_sort(ascend)
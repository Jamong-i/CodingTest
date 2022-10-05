import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))


# T(n) = O(n^2) (최악, 평균, 최선)
def bubble_sort(ascend):
    for i in range(len(ascend)):
        for j in range(len(ascend) - i - 1):
            if ascend[j] > ascend[j + 1]:
                ascend[j], ascend[j + 1] = ascend[j + 1], ascend[j]

    print(*ascend, sep="\n")


bubble_sort(ascend)
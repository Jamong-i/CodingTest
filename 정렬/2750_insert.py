import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))


# T(n) = O(n^2) (최악, 평균)
def selecti_sort(ascend):
    for i in range(1, len(ascend)):
        for j in range(i, 0, -1):
            if ascend[j] < ascend[j - 1]:
                ascend[j], ascend[j - 1] = ascend[j - 1], ascend[j]
            else:
                break

    print(*ascend, sep="\n")


selecti_sort(ascend)

import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))

# T(n) = O(n^2) (최악, 평균, 최선)
def select_sort(ascned):
    for i in range(len(ascned)):
        min_num = i
        for j in range(i + 1, len(ascned)):
            if ascend[min_num] > ascend[j]:
                min_num = j

        ascend[i], ascend[min_num] = ascend[min_num], ascend[i]

    print(*ascend, sep="\n")


select_sort(ascend)
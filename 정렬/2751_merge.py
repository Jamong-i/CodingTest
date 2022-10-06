import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))

# T(n) = O(nlogn) (최선, 최악, 평균)
def merge_sort(ascend):
    if len(ascend) < 2:
        return ascend

    mid = len(ascend) // 2
    first_ascend = merge_sort(ascend[:mid])
    end_ascend = merge_sort(ascend[mid:])

    merge_ascend = []
    low = high = 0
    while low < len(first_ascend) and high < len(end_ascend):
        if first_ascend[low] < end_ascend[high]:
            merge_ascend.append(first_ascend[low])
            low += 1
        else:
            merge_ascend.append(end_ascend[high])
            high += 1

    merge_ascend += first_ascend[low:]
    merge_ascend += end_ascend[high:]
    return merge_ascend


print(*merge_sort(ascend), sep="\n")
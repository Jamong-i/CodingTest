import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
ascend = []

for _ in range(n):
    ascend.append(int(input()))

# T(n) = O(nlog₂n) (최선, 평균)
# T(n) = O(n^2) (최악)
def quick_sort(ascend, start, end):
    # 원소가 1개인 경우 종료
    if start >= end:
        return

    pivot = start
    left = start + 1
    right = end

    while left <= right:
        # 피벗보다 큰 데이터를 찾을 때까지 반복
        while left <= end and ascend[left] <= ascend[pivot]:
            left += 1
        # 피벗보다 작은 데이터를 찾ㅈ을 때까지 반복
        while right > start and ascend[right] >= ascend[pivot]:
            right -= 1
        # 엇갈렸을 때 피벗데이터와 작은 데이터를 교체
        if left > right:
            ascend[right], ascend[pivot] = ascend[pivot], ascend[right]
        # 엇갈리지 않았을 때 작은데이터와 큰 데이터를 교체
        else:
            ascend[left], ascend[right] = ascend[right], ascend[left]

    quick_sort(ascend, start, right - 1)
    quick_sort(ascend, right + 1, end)

quick_sort(ascend, 0, n - 1)
print(*ascend, sep="\n")
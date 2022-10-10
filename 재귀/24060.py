import sys

input = lambda: sys.stdin.readline().rstrip().split()


def merge_sort(numbers):
    if len(numbers) < 2:
        return numbers

    mid = (len(numbers) + 1) // 2

    first_numbers = merge_sort(numbers[:mid])
    end_numbers = merge_sort(numbers[mid:])

    merge_ascend = []
    low = high = 0
    while low < len(first_numbers) and high < len(end_numbers):
        if first_numbers[low] < end_numbers[high]:
            merge_ascend.append(first_numbers[low])
            ascend.append(first_numbers[low])
            low += 1
        else:
            merge_ascend.append(end_numbers[high])
            ascend.append(end_numbers[high])
            high += 1
    while low < len(first_numbers):
        merge_ascend.append(first_numbers[low])
        ascend.append(first_numbers[low])
        low += 1
    while high < len(end_numbers):
        merge_ascend.append(end_numbers[high])
        ascend.append(end_numbers[high])
        high += 1

    return merge_ascend


n, k = map(int, input())
numbers = list(map(int, input()))
ascend = []
merge_sort(numbers)
print(ascend)
if len(ascend) >= k:
    print(ascend[k-1])
else:
    print(-1)
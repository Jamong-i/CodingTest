import sys

input = lambda: sys.stdin.readline().rstrip()

n = int(input())
max = 10
ascend = []


for _ in range(n):
    ascend.append(int(input()))


def counting_sort(ascend, max):
    # counting array 생성(저장소)
    count_array = [0] * (max + 1)

    # counting array에 ascend 값을 카운팅 하기
    for i in ascend:
        count_array[i] += 1
        print(count_array)

    # counting array 업데이트 (카운팅 한 것을 인덱스 값은 직전 값에 카운팅 값을 더한다.)
    for i in range(max):
        count_array[i + 1] += count_array[i]

    print(count_array)

    # output array 생성
    output_array = [0] * len(ascend)

    # counting array 업데이트를 한 이유 (output_array에 순서대로 넣기 위해서)
    for i in ascend:
        output_array[count_array[i] - 1] = i
        count_array[i] -= 1

    print(*output_array, sep="\n")


counting_sort(ascend, max)

import sys

input = lambda: sys.stdin.readline().rstrip()

scoping = 10001
array = [0] * scoping
n = int(input())


def counting_sort(n, scoping, array):
    # 각 인덱스 값 카운팅 하기
    for i in range(n):
        array[int(input())] += 1

    # 범위값 안에서 카운팅한 값이 존재하면 카운팅 값 만큼 i를 반복해서 출력
    for i in range(1, scoping):
        if array[i] >= 1:
            for j in range(array[i]):
                print(i)


counting_sort(n, scoping, array)
import sys

input = lambda: sys.stdin.readline().rstrip()

testCase = int(input())
answer = 0

# 표로 만들어 보면 (floor, room)의 사람 수는 왼쪽집(floor, room - 1) + 아래집(floor-1, room)의 규칙을 찾을 수 있다.

for _ in range(testCase):
    floor = int(input())
    room = int(input())

    # 0층도 존재하기 때문에 floor + 1
    numList = [[0 for n in range(room)] for k in range(floor+1)]
    for k in range(floor+1):
        numList[k][0] = 1
    for n in range(room):
        numList[0][n] = n + 1
    for k in range(1, floor+1):
        for n in range(1, room):
            numList[k][n] = numList[k][n-1] + numList[k-1][n]

    # 인덱스는 0부터 시작하기 때문에 room - 1
    print(numList[floor][room-1])

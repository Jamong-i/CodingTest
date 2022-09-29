import sys

input = lambda : sys.stdin.readline().rstrip()

testCase = int(input())

for i in range(testCase):
    totalFloors, totalRoom, numGuest = map(int, input().split())
    # 몇번 쨰 온 사람과 층수를 나눠서 나머지는 층수, 몫 + 1은 호실
    floor = numGuest % totalFloors
    room = numGuest // totalFloors + 1

    # 나머지가 0이면 꼭대기 층, 몫은 그대로 호실
    if numGuest % totalFloors == 0:
        floor = totalFloors
        room = numGuest // totalFloors

    print(f"{floor*100+room}")

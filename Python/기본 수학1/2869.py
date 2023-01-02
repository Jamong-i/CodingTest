import sys

input = lambda: sys.stdin.readline().rstrip().split()

climb, slid, top = map(int, input())

# 미끄러지기 전을 기준으로 ax-b(x-1)을 세움 (시간 초과)
# date = 0
# while True:
#     date += 1
#     if top <= climb * date - slid * (date - 1):
#         break
# print(date)

# ax-b(x-1) => top을 x => (top-b)/(a-b)로 변형함
# 단 나머지가 있을시 date + 1
date = (top - slid) / (climb - slid)
print(int(date) if date == int(date) else int(date) + 1)


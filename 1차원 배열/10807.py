import sys

input = lambda: sys.stdin.readline().rstrip()

count = int(input())
numArray = list(map(int, input().split()))
numCheck = int(input())

result = 0

for i in range(count):
    if numCheck == numArray[i]:
        result += 1

print(result)
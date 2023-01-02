# num = [int(input()) for i in range(9)]
# print(max(num), num.index(max(num))+1)

import sys

num = [int(sys.stdin.readline()) for i in range(9)]

print(max(num), num.index(max(num))+1)
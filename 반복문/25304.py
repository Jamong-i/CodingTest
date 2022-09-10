import math
import sys

x = int(input())
n = int(input())

print('Yes' if x == sum([math.prod(map(int, sys.stdin.readline().split())) for _ in range(n)])else 'No')

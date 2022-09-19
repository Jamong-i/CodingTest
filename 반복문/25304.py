import math
import sys

print('Yes' if int(input()) == sum([math.prod(map(int, sys.stdin.readline().split())) for _ in range(int(sys.stdin.readline()))])else 'No')
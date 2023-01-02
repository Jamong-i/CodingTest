import sys

input = lambda: sys.stdin.readline().rstrip().split()

numA, numB = map(int, input())

print(numA + numB)
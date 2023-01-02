import sys

N = int(sys.stdin.readline())
list_n = list(map(int, sys.stdin.readline().split()))
print(min(list_n), max(list_n))
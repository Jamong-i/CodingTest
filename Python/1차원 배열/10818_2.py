import sys

N = int(sys.stdin.readline())
list_n = list(sorted(map(int, sys.stdin.readline().split())))
print(list_n[0], list_n[-1])
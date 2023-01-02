import sys

x, n = map(int, sys.stdin.readline().rstrip().split())
answer = [a for a in map(str, sys.stdin.readline().rstrip().split()) if int(a) < n]
# join 또한 문자열만 받음
print(' '.join(answer))
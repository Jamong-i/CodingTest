import sys

for i in range(1, int(input()) + 1):
    x = list(map(int, sys.stdin.readline().split()))
    print(f"Case #{i}: {x[0]} + {x[1]} = {sum(x)}")
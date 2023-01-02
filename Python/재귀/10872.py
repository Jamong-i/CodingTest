import sys
import math

input = lambda: sys.stdin.readline().rstrip()

factorial_num = int(input())
factorial_lst = []

for i in range(1, factorial_num + 1):
    factorial_lst.append(i)

print(math.prod(factorial_lst))
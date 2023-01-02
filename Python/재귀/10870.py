import sys

input = lambda: sys.stdin.readline().rstrip()

def fibonacci_num():
    fibonacci_lst = []
    n = int(input())

    if n == 0:
        print(0)
        return

    for _ in range(0, n + 1):
        fibonacci_lst.append(0)
    fibonacci_lst[0] = 0
    fibonacci_lst[1] = 1

    for i in range(2, n + 1):
        fibonacci_lst[i] = int(fibonacci_lst[i-1]) + int(fibonacci_lst[i-2])

    print(fibonacci_lst[n])

fibonacci_num()
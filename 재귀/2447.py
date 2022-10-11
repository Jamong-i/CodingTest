import sys

input = lambda: sys.stdin.readline().strip()

def star(n):
    tmp = n // 3

    if n == 3:
        Map[1] = ['*', ' ', '*']
        Map[0][:3] = Map[2][:3] = ['*'] * 3
        return

    star(tmp)

    for i in range(0, n, tmp):
        for j in range(0, n, tmp):
            if i != tmp or j != tmp:
                for k in range(tmp):
                    Map[i + k][j:j+tmp] = Map[k][:tmp]

n = int(input())
Map = [[' ' for _ in range(n)] for _ in range(n)]

star(n)

for i in range(n):
    for j in range(n):
        print(Map[i][j], end='')
    print()
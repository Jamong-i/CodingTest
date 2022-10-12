import sys

input = lambda: sys.stdin.readline().rstrip()

# hanoi() 변수 설정
count = 0
array_lst = []

# hanoi 알고리즘
def hanoi(n, start, goal, assistant):
    global count
    global array_lst
    count += 1

    if n == 1:
        array_lst.append(f"{start} {goal}")
        return
    hanoi(n-1, start, assistant, goal)
    array_lst.append(f"{start} {goal}")
    hanoi(n-1, assistant, goal, start)


hanoi(int(input()), 1, 3, 2)

print(count)
for i in range(count):
    print(array_lst[i])
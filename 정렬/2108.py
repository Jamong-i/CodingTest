import sys

input = lambda: sys.stdin.readline().rstrip()


n = int(input())
lst = []

for _ in range(n):
    lst.append(int(input()))
lst = sorted(lst)

# 산술평균
print(round(sum(lst)/n))

# 중앙값
print(lst[n//2])

# 최빈값
counts = dict()
for i in range(1, n+1):
    counts[i] = []

maxCount = 1
count = 1

for j in range(1, n):
    if lst[j] == lst[j-1]:
        count += 1
    else:
        counts[count].append(lst[j-1])
        if maxCount < count:
            maxCount = count
        count = 1
    # n이 홀수일 때
    if j == n-1:
        counts[count].append(lst[j])
        if maxCount < count:
            maxCount = count

if n == 1:
    counts[1].append(lst[0])

counts[maxCount].sort()
if len(counts[maxCount]) == 1:
    print(counts[maxCount][0])
else:
    print(counts[maxCount][1])

# 범위
print(lst[-1] - lst[0])
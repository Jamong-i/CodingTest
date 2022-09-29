import sys

input = lambda : sys.stdin.readline().rstrip()

num = int(input())
line = 0
end = 0

# 라인이 오를수록 이전 라인의 마지막 수 + 라인 수
# 1 + 2 + 3 + 4 ...
while num > end:
    line += 1
    end += line

findNum = end - num
# 짝수 라인 일때는 라인 수가 분자로 1씩 작아지고, 분모는 1부터 1씩 커진다.
if line % 2 == 0:
    numerator = line - findNum
    denominator = findNum + 1
else:
    numerator = findNum + 1
    denominator = line - findNum

print(f"{numerator}/{denominator}")
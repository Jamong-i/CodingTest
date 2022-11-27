import sys

input = lambda : sys.stdin.readline().rstrip().split()

cardCount, delarNum= map(int, input())
cardArray = list(map(int, input()))

result = 0
for i in range(cardCount):
    for j in range(i+1, cardCount):
        for k in range(j+1, cardCount):
            if cardArray[i] + cardArray[j] + cardArray[k] > delarNum:
                continue
            else:
                result = max(result, cardArray[i] + cardArray[j] + cardArray[k])

print(result)
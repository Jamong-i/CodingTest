import sys

input = lambda: sys.stdin.readline().rstrip().split()

fixedCost, produceCost, productCost = map(int, input())

# 생산비용이 제품비용보다 크거나 같으면 손익분기점 존재 안함
print("-1" if produceCost >= productCost else(fixedCost // (productCost - produceCost) + 1))

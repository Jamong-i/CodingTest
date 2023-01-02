import sys

input = lambda: sys.stdin.readline().rstrip().split()

candidate_n, award_n = map(int, input())

score_lst = sorted(map(int, input()), reverse=True)

print(score_lst[award_n - 1])
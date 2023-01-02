# 정해진 말의 갯수
chess = [1, 1, 2, 2, 2, 8]

# 리스트로 입력 받기
chess_inp = list(map(int, input().split()))

# 요소마다 게산하기
for i in range(6):
    print(chess[i] - chess_inp[i], end=" ")

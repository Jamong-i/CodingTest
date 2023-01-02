import sys
# EOF 문제
# while문을 사용해야하는데 종결규칙이 없다..
# 출력이 완료되고 아무것도 입력안했을 때 빠져나와야 하므로 except 에 EOFError를 적어 Error가 났을 때 break하는 식으로 구현해야한다.

while True:
    try:
        a, b = map(int, sys.stdin.readline().rstrip().split())
        print(a+b)
    except:
        break

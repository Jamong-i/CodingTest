import sys

for i in range(int(sys.stdin.readline())):
    print(sum(map(int, sys.stdin.readline().rstrip().split())))

# https://developeryuseon.tistory.com/90
# https://codechacha.com/ko/python-string-strip/
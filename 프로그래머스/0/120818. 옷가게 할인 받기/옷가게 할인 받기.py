def solution(price):
    answer = 0
    if price >= 500000:
        answer= price * 0.8
    elif price >= 300000:
        answer= price * 0.9
    elif price >= 100000 :
        answer= price * 0.95
    else :
        answer= price
    return int(answer)

# round 반올림 
# int는 소수점 이하는 버림
# 제한사항에서 소수점 이하를 버린 값을 retrun하라 했으니 int를 사용하는게 맞음 
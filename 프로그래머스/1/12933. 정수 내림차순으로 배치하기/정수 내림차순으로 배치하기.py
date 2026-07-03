def solution(n):
    answer = ''
    num = [int(i) for i in str(n)]
    num.sort(reverse=True)
    for i in num :
        answer += str(i)
    return int(answer)
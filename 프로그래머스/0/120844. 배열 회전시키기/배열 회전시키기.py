def solution(numbers, direction):
    answer = []
    if direction == "right" :
       answer += numbers[-1:]
       answer += numbers[:-1]
    else :
        answer += numbers[1:]
        answer += numbers[0:1]
    return answer
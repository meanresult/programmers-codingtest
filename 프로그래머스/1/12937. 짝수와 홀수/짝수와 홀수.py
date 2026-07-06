def solution(num):
    if num >= 1 or num < 0:
        return "Even" if num % 2 == 0 else "Odd"
    elif num == 0 :
        return "Even"
        
def solution(n):
    num = n**0.5
    return (num+1)**2 if n%num==0 else -1
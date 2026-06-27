def solution(n):
    if n < 0 :
        return False
    
    i = 1
    while i * i <= n: # n보다 같거나 작아질 때까지 
        if i * i == n: # 같으면 제곱수 
            return 1
        i += 1
    return 2 # 작거나 안되면 2 
    
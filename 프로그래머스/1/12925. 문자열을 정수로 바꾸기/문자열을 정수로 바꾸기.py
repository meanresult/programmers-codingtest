def solution(s):
    pm  = 1
    num = ''
    
    for i in s : 
        if i == '-' : 
            pm = -1  
        else : 
            num += i 
    return (int(num)) * pm
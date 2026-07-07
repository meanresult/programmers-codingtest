def solution(x):
    plus =  sum([int(i) for i in str(x)])
    
    if x % plus == 0 :
        return True
    else :
        return False 
        
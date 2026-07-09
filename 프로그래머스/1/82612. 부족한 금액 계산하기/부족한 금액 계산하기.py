def solution(price, money, count):
    ps = sum(i*price for i in range(1,count+1)) - money
    
    return 0 if ps < 0 else ps 
    
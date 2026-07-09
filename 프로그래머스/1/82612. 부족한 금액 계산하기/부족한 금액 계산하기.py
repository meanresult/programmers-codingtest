def solution(price, money, count):
    ps = sum(i*price for i in range(1,count+1)) - money # n번 타고 싶은 기구비용의 합 - 예산 = 모자른 비용 
    
    return 0 if ps < 0 else ps 
    
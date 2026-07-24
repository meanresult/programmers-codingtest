def solution(t, p):
    ind = len(p)
    indn = int(ind)
    cnt = 0
    
    for i in range(  len(t) - indn+1  ):
        s = t[i:i+indn]
        
        if int(s) <= int(p): #p의 값이 s보다 작으면
            cnt += 1 # 카운트 플러스 
    
    return cnt
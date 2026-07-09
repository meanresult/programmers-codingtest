def solution(left, right):
    n=range(left,right+1)
    num = []
    s = 0
    for i in range(left, right+1): # 수 리스트
            num.append(len([n for n in range(1, i+1)if i % n == 0]))
    
    print(num)
    for a,b in zip(n,num):
        print(a,b)
        if b % 2 == 0:
            s += a
        else :
            s -= a
            
    return s 

# 44 처럼 동일한 제곱수가 있으면 약수가 홀수가 됨 
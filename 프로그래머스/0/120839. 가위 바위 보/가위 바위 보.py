# 가위 : 2, 바위 : 0, 보: 5 

def solution(rsp):
    answer = ''
    ag = {'2':'0', '0':'5', '5':'2'}
    
    for i in rsp :
        answer += ag[i]
        
    return answer 
    
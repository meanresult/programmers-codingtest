def solution(arr):
    s = []
    for i in arr : 
            if not s or s[-1] != i: # 비어있거나 리스트 맨뒷자리 숫자와 동일하지 않다면 
                s.append(i)
                
    return s
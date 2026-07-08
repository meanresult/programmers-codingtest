def solution(arr, divisor):
            lit = sorted([i for i in arr if i % divisor == 0])
            
            if len(lit) > 0 :
                return lit
            else :
                return [-1]
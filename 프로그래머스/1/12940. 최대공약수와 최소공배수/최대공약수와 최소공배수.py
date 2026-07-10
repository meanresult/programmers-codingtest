import math
def solution(n, m):
    s = []
    s.append(math.gcd(n,m))
    s.append(math.lcm(n,m))

    
    return s 
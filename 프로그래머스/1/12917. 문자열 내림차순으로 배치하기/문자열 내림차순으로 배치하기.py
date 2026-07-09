def solution(s):
    m = [i for i in s]
    m.sort(reverse = True)
    return ''.join(m)

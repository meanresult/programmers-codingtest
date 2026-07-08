def solution(s):
    mid = int(len(s)//2) -1
    
    if len(s) % 2 == 0:
        return s[mid]+s[mid+1]
    else :
        return s[mid+1]
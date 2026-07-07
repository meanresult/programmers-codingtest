def solution(s):
    pli=[]
    yli=[]
    for i in s :
        if i == 'p' or i == 'P':
            pli.append(i)
        elif i == 'y' or i == 'Y':
            yli.append(i)
            
    if len(pli) == len(yli):
        return True
    else :
        return False 
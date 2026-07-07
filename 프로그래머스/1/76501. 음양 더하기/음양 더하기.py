def solution(absolutes, signs):
    num = len(absolutes)
    sumn = 0 
    for i in range(0,num):
        if signs[i] == True :
            sumn += absolutes[i]
        elif signs[i] == False :
            sumn -= absolutes[i]
    return sumn
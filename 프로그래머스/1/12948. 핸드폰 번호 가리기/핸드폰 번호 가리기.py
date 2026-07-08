def solution(phone_number):
        num = len(phone_number)-4
        return num*'*' + phone_number[-4:]
        
        # return '*'*(len(phone_number)-4) + phone_number[-4:]
        
        # return "*"*(len(s)-4)+s[-4:]
def solution(phone_number):
        num = int(len(phone_number))-4
        return num*'*' + phone_number[-4:]
# def solution(s):
#     n=''
#     for i in s:
#         print(i)
#         if i.isdigit():
#             n += i
#     if len(n)==len(s):
#         return True
#     else :
#         return False

def solution(s):
    return s.isdigit() and len(s) in [4, 6]
def solution(numbers):
#     num = 0
#     for i in range(0,10) :
#         if i in numbers:
#             pass
#         else :
#             num += i
#     return num
    
    return sum([i for i in range(10) if i not in numbers])
        
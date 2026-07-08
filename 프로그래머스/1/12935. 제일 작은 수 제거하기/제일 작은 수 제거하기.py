# def solution(arr):
#     arr.sort(reverse=True)
#     if len(arr) < 2 :
#         return [-1]
#     else :
#         return arr[:-1]

    # [:-1]
    
# def solution(arr):
#     if len(arr) == 1:
#         return [-1]

#     arr.sort(reverse=True)
#     return arr[:-1]

def solution(arr):

    arr.remove(min(arr))
    if len(arr) == 0:
        arr = [-1]
    return arr
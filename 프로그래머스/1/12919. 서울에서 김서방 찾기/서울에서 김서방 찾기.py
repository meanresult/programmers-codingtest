def solution(seoul):
    result = dict(enumerate(seoul))
    for i,j in result.items():
        if j == 'Kim':
            return f"김서방은 {i}에 있다"
        
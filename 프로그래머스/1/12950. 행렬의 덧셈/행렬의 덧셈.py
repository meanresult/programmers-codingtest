def solution(arr1, arr2):
    result = []
    num = len(arr1)
    for i in range(num):
        row = []
        
        for j in range(len(arr1[0])):
            row.append(arr1[i][j] + arr2[i][j])
    
        result.append(row)
    
    return result
        
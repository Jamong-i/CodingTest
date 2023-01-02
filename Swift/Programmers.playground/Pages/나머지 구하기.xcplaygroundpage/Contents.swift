import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
    guard (num1 > 0 && num1 <= 100), (num2 > 0 && num2 <= 100) else {
        return -1
    }
    
    // 문제 풀이
    let mod = num1 % num2
    return mod
}

// Test Case 1
print(solution(3, 2))

// Test Case 2
print(solution(10, 5))

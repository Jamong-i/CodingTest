import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
    guard (num1 >= -50000 && num1 <= 50000), (num2 >= -50000 && num2 <= 50000) else {
        return -1
    }
    
    // 문제 풀이
    let sum : Int = num1 + num2
    return sum
}

// Test Case 1
print(solution(2, 3))

// Test Case 2
print(solution(100, 2))

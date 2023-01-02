import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
    guard (num1 >= 0 && num1 <= 10000), (num2 >= 0 && num2 <= 10000) else {
        return 0
    }
    
    // 문제 풀이
    let answer = num1 == num2 ? 1 : -1
    return answer
}

// Test Case 1
print(solution(2, 3))

// Test Case 2
print(solution(11, 11))

// Test Case 3
print(solution(7, 99))

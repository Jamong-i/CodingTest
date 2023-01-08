import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
	guard (0...100 ~= num1), (0...100 ~= num2) else {
        return -1
    }
    
    // 문제 풀이
    let div = num1 / num2
    return div
}

// Test Case 1
print(solution(10, 5))

// Test Case 2
print(solution(7, 2))

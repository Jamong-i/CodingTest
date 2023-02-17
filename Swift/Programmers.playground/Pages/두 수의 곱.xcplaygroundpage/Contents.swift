import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
	guard (0...100 ~= num1), (0...100 ~= num2) else {
        return -1
    }
    
    // 문제 풀이
    let mul = num1 * num2컨
    return mul
}

// Test Case 1
print(solution(3, 4))

// Test Case 2
print(solution(27, 19))

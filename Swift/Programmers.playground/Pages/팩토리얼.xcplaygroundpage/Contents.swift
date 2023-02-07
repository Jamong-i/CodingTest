import Foundation

func solution(_ n: Int) -> Int {
	// 제한 사항
	guard 1...3628800 ~= n else { return 0 }
	
	// 문제 풀이
	var result: Int = n
	var count: Int = 1
	
	while result != 0 {
		if result < count {
			return count - 1
		} else {
			result = result / count
			count += 1
		}
	}
	return count - 1
}


// Test Case 1
print(solution(3628800))

// Test Case 2
print(solution(7))

import Foundation

func solution(_ age:Int) -> Int {
	// 제한 사항
	guard 1...120 ~= age else { return 0 }
	
	// 문제 풀이
	return 2022 - age + 1
}

// Test Case 1
print(solution(40))

// Test Case 2
print(solution(23))

import Foundation

func solution(_ numbers: [Int]) -> Int {
	// 제한 사항
	guard 2...100 ~= numbers.count else { return 0 }
	
	// 문제 풀이
	return numbers.sorted().last! * numbers.sorted()[numbers.count - 2]
}

// Test Case 1
print(solution([1, 2, 3, 4, 5]))

// Test Case 2
print(solution([0, 31, 24, 10, 1, 9]))

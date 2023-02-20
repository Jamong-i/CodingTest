import Foundation

func solution(_ sides: [Int]) -> Int {
	// 제한 사항
	guard 3 == sides.count else { return 0 }
	
	// 문제 풀이
	var result: [Int] = sides.sorted()
	
	return result[0] + result[1] > result[2] ? 1 : 2
}


// Test Case 1
print(solution([1, 2, 3]))

// Test Case 2
print(solution([3, 6, 2]))


print(solution([199, 72, 222]))

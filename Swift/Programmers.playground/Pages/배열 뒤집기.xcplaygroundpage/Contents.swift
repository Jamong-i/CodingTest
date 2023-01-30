import Foundation

// reversed() 험수 사용
func solution1(_ num_list: [Int]) -> [Int] {
	// 제한 사항
	guard 1...1000 ~= num_list.count else { return [] }
	
	// 문제 풀이
	return num_list.reversed()
}

// for문 insert로 밀어내기
func solution2(_ num_list: [Int]) -> [Int] {
	// 제한 사항
	guard 1...1000 ~= num_list.count else { return [] }
	
	// 문제 풀이
	var result: [Int] = []
	
	for i in num_list {
		result.insert(i, at:0)
	}
	
	return result
}

// Test Case 1
print(solution2([1, 2, 3, 4, 5]))

// Test Case 2
print(solution1([1, 1, 1, 1, 1, 2]))

// Test Case 3
print(solution2([1, 0, 1, 1, 1, 3, 5]))

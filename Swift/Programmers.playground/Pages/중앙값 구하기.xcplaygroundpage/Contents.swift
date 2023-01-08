import Foundation

func solution(_ array:[Int]) -> Int {
	// 제한 사항
	guard (1...100 ~= array.count), (array.count % 2 == 1) else {
		return 0
	}
	
	// 문제 풀이
	let sortedArray = array.sorted()
	return sortedArray[sortedArray.count / 2]
}

// Test Case 1
print(solution([1, 2, 7, 10, 11]))


// Test Case 2
print(solution([9, -1, 0]))

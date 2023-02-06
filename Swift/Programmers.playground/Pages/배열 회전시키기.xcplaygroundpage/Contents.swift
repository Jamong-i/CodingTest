import Foundation

func solution1(_ numbers: [Int], _ direction: String) -> [Int] {
	// 제한 사항
	guard 3...20 ~= numbers.count else { return [] }
	
	// 문제 풀이
	var array: Array = numbers
	
	if direction == "left" {
		array.append(array.first!)
		array.removeFirst()
	} else if direction == "right" {
		array.insert(array.last!, at: 0)
		array.removeLast()
	} else {
		array = []
	}
	
	return array
}

func solution2(_ numbers: [Int], _ direction: String) -> [Int] {
	// 제한 사항
	guard 3...20 ~= numbers.count else { return [] }
	
	// 문제 풀이
	var array: Array = numbers
	direction == "right" ? array.insert(array.removeLast(), at: 0) : array.append(array.removeFirst())
	return array
}


// Test Case 1
print(solution1([1, 2, 3], "right"))

// Test Case 2
print(solution2([4, 455, 6, 4, -1, 45, 6], "left"))

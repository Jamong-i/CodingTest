import Foundation

func solution1(_ numbers:[Int]) -> Double {
	// 제한 사항
	guard 0...1000 ~= numbers.count else { return 0 }
	
	// 문제 풀이
	let sum: Int = numbers.reduce(0, {(first: Int, second: Int) -> Int in return first + second
	})
	
	return Double(sum) / Double(numbers.count)
}

func solution2(_ numbers:[Int]) -> Double {
	// 제한 사항
	guard 0...1000 ~= numbers.count else { return 0 }
	
	// 문제 풀이
	return { Double(numbers.reduce(0, +)) / Double(numbers.count) }()
}

// Test Case 1
print(solution2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

// Test Case 2
print(solution1([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]))

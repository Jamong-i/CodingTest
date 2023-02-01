import Foundation

func solution1(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
	// 제한 사항
	guard 2...30 ~= numbers.count, 0 <= num1, num1 < num2, num2 < numbers.count else { return [] }
	
	// 문제 풀이
	var answer: [Int] = []
	
	for i in num1...num2 {
		answer.append(numbers[i])
	}
	
	return answer
}

func solution2(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
	// 제한 사항
	guard 2...30 ~= numbers.count, 0 <= num1, num1 < num2, num2 < numbers.count else { return [] }
	
	// 문제 풀이
	return (num1...num2).map{ numbers[$0] }
}

// Test Case 1
print(solution1([1, 2, 3, 4, 5], 1, 3))

// Test Case 2
print(solution2([1, 3, 5], 1, 2))

import Foundation

func solution1(_ n: Int) -> Int {
	// 제한 사항
	guard 1...1000 ~= n else { return 0 }
	
	// 문제 풀이
	var evenElement: Int = n / 2
	var result: Int = 0
	
	for i in 0...evenElement {
		result += 2 * i
	}
	
	return result
}

func solution2(_ n: Int) -> Int {
	// 제한 사항
	guard 1...1000 ~= n else { return 0 }
	
	// 문제 풀이
	return (0...n).filter { $0 % 2 == 0 }.reduce(0, +)
}


// Test Case 1
print(solution1(10))

// Test Case 2
print(solution2(4))

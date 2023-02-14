import Foundation

func solution1(_ n: Int) -> [Int] {
	// 제한 사항
	guard 2...10000 ~= n else { return [] }
	
	// 문제풀이
	var num = n
	var result: [Int] = []
	var count = 2
	
	while num != 1 {
		if num % count == 0 {
			num /= count
			result.append(count)
			count = 2
		}
		else {
			count += 1
		}
	}
	
	return Set(result).sorted()
}

func solution2(_ n: Int) -> [Int] {
	// 제한 사항
	guard 2...10000 ~= n else { return [] }
	
	// 문제 풀이
	var result: [Int] = []
	
	for i in 2...n {
		if n % i == 0 && !result.contains(where: { i % $0 == 0 }) {
			result.append(i)
		}
	}
	
	return result
}


// Test Case 1
print(solution1(12))

// Test Case 2
print(solution2(17))

// Test Case 3
print(solution1(420))

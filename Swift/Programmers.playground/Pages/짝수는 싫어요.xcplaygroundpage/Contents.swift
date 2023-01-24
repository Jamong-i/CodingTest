import Foundation

// 일반 문제풀이
func solution(_ n:Int) -> [Int] {
	// 제한 사항
	guard 1...100 ~= n else { return [] }
	
	// 문제 풀이
	var answer: [Int] = []
	var num: Int = 1
	
	while n >= num {
		answer.append(num)
		num += 2
	}
	return answer
}

// 고차함수 filter
func solution2(_ n:Int) -> [Int] {
	// 제한 사항
	guard 1...100 ~= n else { return [] }
	
	// 문제 풀이
	return (1...n).filter { $0 % 2 == 1 }
}

// Test Case 1
print(solution(10))

// Test Case 2
print(solution2(15))

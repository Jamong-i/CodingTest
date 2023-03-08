import Foundation

func solution(_ n: Int) -> [Int] {
	// 제한 사항
	guard 1...10000 ~= n else { return [] }
	
	// 문제 풀이
	var answer: [Int] = []
	
	for i in 1...n {
		if n % i == 0 {
			answer.append(i)
		}
	}
	return answer
}

func solution2(_ n: Int) -> [Int] {
	// 문제 풀이
	let divisors = Array(1...n).filter { n % $0 == 0 }
	return divisors
}

// Test Case 1
print(solution(1))

print(solution(10))

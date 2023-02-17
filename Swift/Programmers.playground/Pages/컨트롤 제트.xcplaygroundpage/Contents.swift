import Foundation

func solution(_ s: String) -> Int {
	// 제한 사항
	guard 1...200 ~= s.count else { return 0 }
	
	// 문제 풀이
	var save: [String.SubSequence] = s.split(separator: " ")
	var answer: Int = 0
	
	for (index, string) in save.enumerated() {
		if string == "Z" {
			answer -= Int(String(save[index - 1]))!
		} else {
			answer += Int(string)!
		}
	}
	return answer
}


// Test Case 1
print(solution("1 2 Z 3"))

// Test Case 2
print(solution("10 20 30 40"))

// Test Case 3
print(solution("10 Z 20 Z 1"))

// Test Case 4
print(solution("10 Z 20 Z"))

// Test Case 5
print(solution("-1 -2 -3 Z"))


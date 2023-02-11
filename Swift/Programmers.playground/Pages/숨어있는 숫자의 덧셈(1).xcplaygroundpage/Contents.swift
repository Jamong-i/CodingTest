import Foundation

func solution(_ my_string: String) -> Int {
	// 제한 사항
	guard 1...1000 ~= my_string.count else { return 0 }
	
	// 문제 풀이
	var answer = my_string.filter { $0.isNumber }
	return String(answer).map{ Int(String($0))! }.reduce(0) { $0 + $1 }
}

// Test Case 1
print(solution("aAb1B2cC34oOp"))

// Test Case 2
print(solution("1a2b3c4d123"))

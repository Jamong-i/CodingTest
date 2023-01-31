import Foundation

func solution1(_ my_string: String, _ latter: String) -> String {
	// 제한 사항
	guard 1...100 ~= my_string.count, 1 == latter.count else { return "" }
	
	// 문제 풀이
	return my_string.replacingOccurrences(of: latter, with: "")
}

func solution2(_ my_string: String, _ letter: String) -> String {
	return my_string.filter{ String($0) != letter }
}

// Test Case 1
print(solution1("abcdef", "f"))

// Test Case 2
print(solution2("BCBdbe", "B"))
